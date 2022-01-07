; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_get_acpi_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_get_acpi_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.acpi_resource_irq, %struct.acpi_resource_address32 }
%struct.acpi_resource_irq = type { i32, i64* }
%struct.acpi_resource_address32 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.resource = type { i64, i64 }

@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @fjes_get_acpi_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_get_acpi_resource(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_resource_address32*, align 8
  %7 = alloca %struct.acpi_resource_irq*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.resource*
  store %struct.resource* %10, %struct.resource** %8, align 8
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %65 [
    i32 129, label %14
    i32 128, label %38
  ]

14:                                               ; preds = %2
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.acpi_resource_address32* %17, %struct.acpi_resource_address32** %6, align 8
  %18 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.resource*, %struct.resource** %8, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i64 0
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 1
  store i64 %21, i64* %24, align 8
  %25 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %6, align 8
  %30 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.resource*, %struct.resource** %8, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i64 0
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %66

38:                                               ; preds = %2
  %39 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.acpi_resource_irq* %41, %struct.acpi_resource_irq** %7, align 8
  %42 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %43 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @AE_ERROR, align 4
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %38
  %49 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %50 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.resource*, %struct.resource** %8, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i64 1
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %58 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i64 1
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %66

65:                                               ; preds = %2
  br label %66

66:                                               ; preds = %65, %48, %14
  %67 = load i32, i32* @AE_OK, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %46
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
