; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-core.c_vimc_create_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-core.c_vimc_create_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vimc_ent_link* }
%struct.vimc_ent_link = type { i64, i64, i32, i32, i32 }
%struct.vimc_ent_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vimc_device*)* @vimc_create_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_create_links(%struct.vimc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vimc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vimc_ent_link*, align 8
  %7 = alloca %struct.vimc_ent_device*, align 8
  %8 = alloca %struct.vimc_ent_device*, align 8
  store %struct.vimc_device* %0, %struct.vimc_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %65, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %12 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %9
  %18 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %19 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.vimc_ent_link*, %struct.vimc_ent_link** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vimc_ent_link, %struct.vimc_ent_link* %22, i64 %24
  store %struct.vimc_ent_link* %25, %struct.vimc_ent_link** %6, align 8
  %26 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %27 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.vimc_ent_link*, %struct.vimc_ent_link** %6, align 8
  %30 = getelementptr inbounds %struct.vimc_ent_link, %struct.vimc_ent_link* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.vimc_ent_device* @platform_get_drvdata(i32 %33)
  store %struct.vimc_ent_device* %34, %struct.vimc_ent_device** %7, align 8
  %35 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %36 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.vimc_ent_link*, %struct.vimc_ent_link** %6, align 8
  %39 = getelementptr inbounds %struct.vimc_ent_link, %struct.vimc_ent_link* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.vimc_ent_device* @platform_get_drvdata(i32 %42)
  store %struct.vimc_ent_device* %43, %struct.vimc_ent_device** %8, align 8
  %44 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %7, align 8
  %45 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vimc_ent_link*, %struct.vimc_ent_link** %6, align 8
  %48 = getelementptr inbounds %struct.vimc_ent_link, %struct.vimc_ent_link* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %8, align 8
  %51 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vimc_ent_link*, %struct.vimc_ent_link** %6, align 8
  %54 = getelementptr inbounds %struct.vimc_ent_link, %struct.vimc_ent_link* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vimc_ent_link*, %struct.vimc_ent_link** %6, align 8
  %57 = getelementptr inbounds %struct.vimc_ent_link, %struct.vimc_ent_link* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @media_create_pad_link(i32 %46, i32 %49, i32 %52, i32 %55, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %17
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %17
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %9

68:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.vimc_ent_device* @platform_get_drvdata(i32) #1

declare dso_local i32 @media_create_pad_link(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
