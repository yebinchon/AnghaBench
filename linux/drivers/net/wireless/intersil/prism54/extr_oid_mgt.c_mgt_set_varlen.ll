; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_oid_mgt.c_mgt_set_varlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_oid_mgt.c_mgt_set_varlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.islpci_mgmtframe = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@PIMFOR_OP_ERROR = common dso_local global i32 0, align 4
@OID_NUM_LAST = common dso_local global i32 0, align 4
@isl_oid = common dso_local global %struct.TYPE_8__* null, align 8
@OID_FLAG_TYPE = common dso_local global i32 0, align 4
@PRV_STATE_READY = common dso_local global i64 0, align 8
@PIMFOR_OP_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgt_set_varlen(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.islpci_mgmtframe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @PIMFOR_OP_ERROR, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @OID_NUM_LAST, align 4
  %17 = icmp uge i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OID_FLAG_TYPE, align 4
  %39 = and i32 %37, %38
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @mgt_cpu_to_le(i32 %39, i8* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = call i64 @islpci_get_state(%struct.TYPE_7__* %42)
  %44 = load i64, i64* @PRV_STATE_READY, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PIMFOR_OP_SET, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @islpci_mgt_transaction(i32 %49, i32 %50, i32 %51, i8* %52, i32 %55, %struct.islpci_mgmtframe** %10)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %46
  %60 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %61 = getelementptr inbounds %struct.islpci_mgmtframe, %struct.islpci_mgmtframe* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %10, align 8
  %66 = call i32 @islpci_mgt_release(%struct.islpci_mgmtframe* %65)
  br label %67

67:                                               ; preds = %59, %46
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @PIMFOR_OP_ERROR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %67
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %70
  br label %81

78:                                               ; preds = %4
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i8*, i8** %7, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @OID_FLAG_TYPE, align 4
  %92 = and i32 %90, %91
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @mgt_le_to_cpu(i32 %92, i8* %93)
  br label %95

95:                                               ; preds = %84, %81
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mgt_cpu_to_le(i32, i8*) #1

declare dso_local i64 @islpci_get_state(%struct.TYPE_7__*) #1

declare dso_local i32 @islpci_mgt_transaction(i32, i32, i32, i8*, i32, %struct.islpci_mgmtframe**) #1

declare dso_local i32 @islpci_mgt_release(%struct.islpci_mgmtframe*) #1

declare dso_local i32 @mgt_le_to_cpu(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
