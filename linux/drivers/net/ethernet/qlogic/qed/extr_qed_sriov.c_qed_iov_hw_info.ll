; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.qed_dev* }
%struct.qed_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i32 }

@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No PCIe IOV support\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"IOV capabilities, but no VFs are published\0A\00", align 1
@MAX_NUM_VFS_BB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"First VF in hwfn 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iov_hw_info(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 1
  %11 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  store %struct.qed_dev* %11, %struct.qed_dev** %4, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 1
  %14 = load %struct.qed_dev*, %struct.qed_dev** %13, align 8
  %15 = call i64 @IS_VF(%struct.qed_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %148

18:                                               ; preds = %1
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 1
  %21 = load %struct.qed_dev*, %struct.qed_dev** %20, align 8
  %22 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %25 = call i32 @pci_find_ext_capability(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %30 = load i32, i32* @QED_MSG_IOV, align 4
  %31 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %29, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %148

32:                                               ; preds = %18
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.TYPE_3__* @kzalloc(i32 24, i32 %33)
  %35 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %36 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %35, i32 0, i32 0
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %36, align 8
  %37 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %38 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %148

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %47 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %51 = call i32 @qed_iov_pci_cfg_info(%struct.qed_dev* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %148

56:                                               ; preds = %44
  %57 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %58 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %56
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %65 = load i32, i32* @QED_MSG_IOV, align 4
  %66 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %64, i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %68 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = call i32 @kfree(%struct.TYPE_3__* %69)
  %71 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %72 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %71, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %72, align 8
  store i32 0, i32* %2, align 4
  br label %148

73:                                               ; preds = %56
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %75 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %74, i32 0, i32 1
  %76 = load %struct.qed_dev*, %struct.qed_dev** %75, align 8
  %77 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %82 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 256, %83
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %73
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %88 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %87, i32 0, i32 1
  %89 = load %struct.qed_dev*, %struct.qed_dev** %88, align 8
  %90 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %95 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = sub nsw i32 %97, 16
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** %7, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %103 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i8* %101, i8** %105, align 8
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %107 = call i64 @QED_PATH_ID(%struct.qed_hwfn* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %86
  %110 = load i64, i64* @MAX_NUM_VFS_BB, align 8
  %111 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %112 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = sub i64 0, %110
  %117 = getelementptr i8, i8* %115, i64 %116
  store i8* %117, i8** %114, align 8
  br label %118

118:                                              ; preds = %109, %86
  br label %139

119:                                              ; preds = %73
  %120 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %121 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %120, i32 0, i32 1
  %122 = load %struct.qed_dev*, %struct.qed_dev** %121, align 8
  %123 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %128 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %126, %129
  %131 = sub nsw i32 %130, 256
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  store i8* %133, i8** %8, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %136 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  store i8* %134, i8** %138, align 8
  br label %139

139:                                              ; preds = %119, %118
  %140 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %141 = load i32, i32* @QED_MSG_IOV, align 4
  %142 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %143 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %140, i32 %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %139, %63, %54, %41, %28, %17
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i64 @IS_VF(%struct.qed_dev*) #1

declare dso_local i32 @pci_find_ext_capability(i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @qed_iov_pci_cfg_info(%struct.qed_dev*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

declare dso_local i64 @QED_PATH_ID(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
