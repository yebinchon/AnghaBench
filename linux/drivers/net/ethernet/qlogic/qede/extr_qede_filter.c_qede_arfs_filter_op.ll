; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_arfs_filter_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_arfs_filter_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_arfs_fltr_node = type { i64, i32, i64, i32, i64, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qede_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [103 x i8] c"Failed arfs filter configuration fw_rc=%d, flow_id=%d, sw_id=0x%llx, src_port=%d, dst_port=%d, rxq=%d\0A\00", align 1
@QEDE_FLTR_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_arfs_filter_op(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qede_arfs_fltr_node*, align 8
  %8 = alloca %struct.qede_dev*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qede_arfs_fltr_node*
  store %struct.qede_arfs_fltr_node* %10, %struct.qede_arfs_fltr_node** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.qede_dev*
  store %struct.qede_dev* %12, %struct.qede_dev** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %15 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  %19 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %22 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %25 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %28 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  %32 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %33 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ntohs(i32 %35)
  %37 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %38 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @DP_NOTICE(%struct.qede_dev* %19, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %31, i32 %36, i64 %39)
  %41 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %42 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %47 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load i32, i32* @QEDE_FLTR_VALID, align 4
  %49 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %50 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %49, i32 0, i32 3
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %53 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  br label %120

57:                                               ; preds = %3
  %58 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %59 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %64 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  %65 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %66 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %57
  %70 = load i32, i32* @QEDE_FLTR_VALID, align 4
  %71 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %72 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %71, i32 0, i32 3
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %75 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %78 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %83 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %84 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %85 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @qede_configure_arfs_fltr(%struct.qede_dev* %82, %struct.qede_arfs_fltr_node* %83, i64 %86, i32 0)
  br label %88

88:                                               ; preds = %81, %69
  br label %114

89:                                               ; preds = %57
  %90 = load i32, i32* @QEDE_FLTR_VALID, align 4
  %91 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %92 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %91, i32 0, i32 3
  %93 = call i32 @clear_bit(i32 %90, i32* %92)
  %94 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %95 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %98 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %89
  %102 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %103 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %106 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %108 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %109 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %7, align 8
  %110 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @qede_configure_arfs_fltr(%struct.qede_dev* %107, %struct.qede_arfs_fltr_node* %108, i64 %111, i32 1)
  br label %113

113:                                              ; preds = %101, %89
  br label %114

114:                                              ; preds = %113, %88
  %115 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %116 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock_bh(i32* %118)
  br label %120

120:                                              ; preds = %114, %18
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qede_configure_arfs_fltr(%struct.qede_dev*, %struct.qede_arfs_fltr_node*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
