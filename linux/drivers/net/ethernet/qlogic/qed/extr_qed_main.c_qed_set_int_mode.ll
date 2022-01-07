; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_set_int_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_set_int_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32, i32, %struct.qed_int_params }
%struct.qed_int_params = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.msix_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to enable MSI-X\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to enable MSI\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unknown int_mode value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Using %s interrupts\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INTa\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"MSIX\00", align 1
@QED_COAL_MODE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32)* @qed_set_int_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_set_int_mode(%struct.qed_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_int_params*, align 8
  %6 = alloca %struct.msix_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %10 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %9, i32 0, i32 3
  store %struct.qed_int_params* %10, %struct.qed_int_params** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %12 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %78 [
    i32 128, label %15
    i32 129, label %50
    i32 130, label %74
  ]

15:                                               ; preds = %2
  %16 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %17 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kcalloc(i32 %20, i32 4, i32 %21)
  %23 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %24 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %26 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %88

32:                                               ; preds = %15
  %33 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %34 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %35 = call i32 @qed_enable_msix(%struct.qed_dev* %33, %struct.qed_int_params* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %88

39:                                               ; preds = %32
  %40 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %41 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %43 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %88

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %2, %49
  %51 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %52 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %57 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pci_enable_msi(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %64 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 129, i32* %65, align 4
  br label %88

66:                                               ; preds = %55
  %67 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %68 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %88

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %2, %73
  %75 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %76 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 130, i32* %77, align 4
  store i32 0, i32* %7, align 4
  br label %88

78:                                               ; preds = %2
  %79 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %80 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %81 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %74, %71, %62, %48, %38, %29
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %93 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %94 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 130
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %107

99:                                               ; preds = %91
  %100 = load %struct.qed_int_params*, %struct.qed_int_params** %5, align 8
  %101 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 129
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  br label %107

107:                                              ; preds = %99, %98
  %108 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %98 ], [ %106, %99 ]
  %109 = call i32 @DP_INFO(%struct.qed_dev* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %107, %88
  %111 = load i32, i32* @QED_COAL_MODE_ENABLE, align 4
  %112 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %113 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qed_enable_msix(%struct.qed_dev*, %struct.qed_int_params*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, ...) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_enable_msi(i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_dev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
