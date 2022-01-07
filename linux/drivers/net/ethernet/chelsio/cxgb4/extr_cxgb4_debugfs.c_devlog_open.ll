; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_devlog_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_devlog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.devlog_params }
%struct.devlog_params = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.devlog_info = type { i32, i32, %struct.fw_devlog_e* }
%struct.fw_devlog_e = type { i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@devlog_seq_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@T4_MEMORY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @devlog_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlog_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.devlog_params*, align 8
  %8 = alloca %struct.devlog_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_devlog_e*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %6, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.devlog_params* %19, %struct.devlog_params** %7, align 8
  %20 = load %struct.devlog_params*, %struct.devlog_params** %7, align 8
  %21 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %122

27:                                               ; preds = %2
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load %struct.devlog_params*, %struct.devlog_params** %7, align 8
  %30 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 16, %32
  %34 = trunc i64 %33 to i32
  %35 = call %struct.devlog_info* @__seq_open_private(%struct.file* %28, i32* @devlog_seq_ops, i32 %34)
  store %struct.devlog_info* %35, %struct.devlog_info** %8, align 8
  %36 = load %struct.devlog_info*, %struct.devlog_info** %8, align 8
  %37 = icmp ne %struct.devlog_info* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %122

41:                                               ; preds = %27
  %42 = load %struct.devlog_params*, %struct.devlog_params** %7, align 8
  %43 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 16
  %47 = trunc i64 %46 to i32
  %48 = load %struct.devlog_info*, %struct.devlog_info** %8, align 8
  %49 = getelementptr inbounds %struct.devlog_info, %struct.devlog_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.devlog_info*, %struct.devlog_info** %8, align 8
  %51 = getelementptr inbounds %struct.devlog_info, %struct.devlog_info* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.adapter*, %struct.adapter** %6, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.adapter*, %struct.adapter** %6, align 8
  %56 = load %struct.adapter*, %struct.adapter** %6, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.devlog_params*, %struct.devlog_params** %7, align 8
  %61 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.devlog_params*, %struct.devlog_params** %7, align 8
  %64 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.devlog_params*, %struct.devlog_params** %7, align 8
  %67 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.devlog_info*, %struct.devlog_info** %8, align 8
  %70 = getelementptr inbounds %struct.devlog_info, %struct.devlog_info* %69, i32 0, i32 2
  %71 = load %struct.fw_devlog_e*, %struct.fw_devlog_e** %70, align 8
  %72 = bitcast %struct.fw_devlog_e* %71 to i32*
  %73 = load i32, i32* @T4_MEMORY_READ, align 4
  %74 = call i32 @t4_memory_rw(%struct.adapter* %55, i32 %59, i32 %62, i64 %65, i32 %68, i32* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.adapter*, %struct.adapter** %6, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %41
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = load %struct.file*, %struct.file** %5, align 8
  %83 = call i32 @seq_release_private(%struct.inode* %81, %struct.file* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %122

85:                                               ; preds = %41
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %118, %85
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.devlog_info*, %struct.devlog_info** %8, align 8
  %89 = getelementptr inbounds %struct.devlog_info, %struct.devlog_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %86
  %93 = load %struct.devlog_info*, %struct.devlog_info** %8, align 8
  %94 = getelementptr inbounds %struct.devlog_info, %struct.devlog_info* %93, i32 0, i32 2
  %95 = load %struct.fw_devlog_e*, %struct.fw_devlog_e** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.fw_devlog_e, %struct.fw_devlog_e* %95, i64 %97
  store %struct.fw_devlog_e* %98, %struct.fw_devlog_e** %12, align 8
  %99 = load %struct.fw_devlog_e*, %struct.fw_devlog_e** %12, align 8
  %100 = getelementptr inbounds %struct.fw_devlog_e, %struct.fw_devlog_e* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %118

104:                                              ; preds = %92
  %105 = load %struct.fw_devlog_e*, %struct.fw_devlog_e** %12, align 8
  %106 = getelementptr inbounds %struct.fw_devlog_e, %struct.fw_devlog_e* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @be32_to_cpu(i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.devlog_info*, %struct.devlog_info** %8, align 8
  %116 = getelementptr inbounds %struct.devlog_info, %struct.devlog_info* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %104
  br label %118

118:                                              ; preds = %117, %103
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %86

121:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %80, %38, %24
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.devlog_info* @__seq_open_private(%struct.file*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4_memory_rw(%struct.adapter*, i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @seq_release_private(%struct.inode*, %struct.file*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
