; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_log_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_log_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.qed_dev_info }
%struct.qed_dev_info = type { i32, i32, i32, i32, i32, i32 }

@QEDE_FW_VER_STR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Storm FW %d.%d.%d.%d, Management FW %d.%d.%d.%d\00", align 1
@QED_MFW_VERSION_3_MASK = common dso_local global i32 0, align 4
@QED_MFW_VERSION_3_OFFSET = common dso_local global i32 0, align 4
@QED_MFW_VERSION_2_MASK = common dso_local global i32 0, align 4
@QED_MFW_VERSION_2_OFFSET = common dso_local global i32 0, align 4
@QED_MFW_VERSION_1_MASK = common dso_local global i32 0, align 4
@QED_MFW_VERSION_1_OFFSET = common dso_local global i32 0, align 4
@QED_MFW_VERSION_0_MASK = common dso_local global i32 0, align 4
@QED_MFW_VERSION_0_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" [MBI %d.%d.%d]\00", align 1
@QED_MBI_VERSION_2_MASK = common dso_local global i32 0, align 4
@QED_MBI_VERSION_2_OFFSET = common dso_local global i32 0, align 4
@QED_MBI_VERSION_1_MASK = common dso_local global i32 0, align 4
@QED_MBI_VERSION_1_OFFSET = common dso_local global i32 0, align 4
@QED_MBI_VERSION_0_MASK = common dso_local global i32 0, align 4
@QED_MBI_VERSION_0_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"qede %02x:%02x.%02x: %s [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*)* @qede_log_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_log_probe(%struct.qede_dev* %0) #0 {
  %2 = alloca %struct.qede_dev*, align 8
  %3 = alloca %struct.qed_dev_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %2, align 8
  %7 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %8 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.qed_dev_info* %9, %struct.qed_dev_info** %3, align 8
  %10 = load i32, i32* @QEDE_FW_VER_STR_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @QEDE_FW_VER_STR_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %17 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %20 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %23 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %26 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %29 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @QED_MFW_VERSION_3_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @QED_MFW_VERSION_3_OFFSET, align 4
  %34 = ashr i32 %32, %33
  %35 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %36 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @QED_MFW_VERSION_2_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @QED_MFW_VERSION_2_OFFSET, align 4
  %41 = ashr i32 %39, %40
  %42 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %43 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @QED_MFW_VERSION_1_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @QED_MFW_VERSION_1_OFFSET, align 4
  %48 = ashr i32 %46, %47
  %49 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %50 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QED_MFW_VERSION_0_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @QED_MFW_VERSION_0_OFFSET, align 4
  %55 = ashr i32 %53, %54
  %56 = call i32 (i32*, i64, i8*, i32, i32, i32, ...) @snprintf(i32* %13, i64 %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27, i32 %34, i32 %41, i32 %48, i32 %55)
  %57 = load i32, i32* @QEDE_FW_VER_STR_SIZE, align 4
  %58 = call i32 @strlen(i32* %13)
  %59 = sub nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %62 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %1
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %65
  %69 = call i32 @strlen(i32* %13)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %13, i64 %70
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %74 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @QED_MBI_VERSION_2_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @QED_MBI_VERSION_2_OFFSET, align 4
  %79 = ashr i32 %77, %78
  %80 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %81 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @QED_MBI_VERSION_1_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @QED_MBI_VERSION_1_OFFSET, align 4
  %86 = ashr i32 %84, %85
  %87 = load %struct.qed_dev_info*, %struct.qed_dev_info** %3, align 8
  %88 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @QED_MBI_VERSION_0_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @QED_MBI_VERSION_0_OFFSET, align 4
  %93 = ashr i32 %91, %92
  %94 = call i32 (i32*, i64, i8*, i32, i32, i32, ...) @snprintf(i32* %71, i64 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %68, %65, %1
  %96 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %97 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %104 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @PCI_SLOT(i32 %107)
  %109 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %110 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @PCI_FUNC(i32 %113)
  %115 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %116 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %108, i32 %114, i32* %13, i32 %119)
  %121 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %121)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @strlen(i32*) #2

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @PCI_SLOT(i32) #2

declare dso_local i32 @PCI_FUNC(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
