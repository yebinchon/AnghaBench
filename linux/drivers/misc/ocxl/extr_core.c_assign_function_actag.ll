; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_assign_function_actag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_assign_function_actag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_fn = type { i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"actag range starting at %d, enabled %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_fn*)* @assign_function_actag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_function_actag(%struct.ocxl_fn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocxl_fn*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ocxl_fn* %0, %struct.ocxl_fn** %3, align 8
  %9 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %10 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @ocxl_config_get_actag_info(%struct.pci_dev* %14, i8** %5, i8** %6, i8** %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %23 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %26 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %29 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %32 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %36 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %39 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @ocxl_config_set_actag(%struct.pci_dev* %30, i32 %34, i8* %37, i8* %40)
  %42 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %43 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %42, i32 0, i32 2
  %44 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %45 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %48 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @dev_dbg(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %20, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ocxl_config_get_actag_info(%struct.pci_dev*, i8**, i8**, i8**) #1

declare dso_local i32 @ocxl_config_set_actag(%struct.pci_dev*, i32, i8*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
