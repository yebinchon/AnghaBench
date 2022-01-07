; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_mbox_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_mbox_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.mbox_cmd_log* }
%struct.mbox_cmd_log = type { i32, i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_mbox_log = type { i8**, i8**, i32 }
%struct.mbox_cmd = type { i64, i32* }

@MBOX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_mbox_log(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_mbox_log*, align 8
  %10 = alloca %struct.cudbg_buffer, align 8
  %11 = alloca %struct.mbox_cmd_log*, align 8
  %12 = alloca %struct.mbox_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %20 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %21 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %20, i32 0, i32 0
  %22 = load %struct.adapter*, %struct.adapter** %21, align 8
  store %struct.adapter* %22, %struct.adapter** %8, align 8
  store %struct.cudbg_mbox_log* null, %struct.cudbg_mbox_log** %9, align 8
  %23 = bitcast %struct.cudbg_buffer* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  store %struct.mbox_cmd_log* null, %struct.mbox_cmd_log** %11, align 8
  %24 = load %struct.adapter*, %struct.adapter** %8, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %25, align 8
  store %struct.mbox_cmd_log* %26, %struct.mbox_cmd_log** %11, align 8
  %27 = load %struct.adapter*, %struct.adapter** %8, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %28, align 8
  %30 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 24, %33
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %19, align 8
  %36 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %37 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = call i32 @cudbg_get_buff(%struct.cudbg_init* %36, %struct.cudbg_buffer* %37, i8* %38, %struct.cudbg_buffer* %10)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %4, align 4
  br label %128

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.cudbg_mbox_log*
  store %struct.cudbg_mbox_log* %47, %struct.cudbg_mbox_log** %9, align 8
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %121, %44
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %48
  %53 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %54 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %60 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp uge i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %65 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub i32 %67, %66
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %63, %52
  %70 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call %struct.mbox_cmd* @mbox_cmd_log_entry(%struct.mbox_cmd_log* %70, i32 %71)
  store %struct.mbox_cmd* %72, %struct.mbox_cmd** %12, align 8
  %73 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %74 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %121

78:                                               ; preds = %69
  %79 = load %struct.cudbg_mbox_log*, %struct.cudbg_mbox_log** %9, align 8
  %80 = getelementptr inbounds %struct.cudbg_mbox_log, %struct.cudbg_mbox_log* %79, i32 0, i32 2
  %81 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %82 = call i32 @memcpy(i32* %80, %struct.mbox_cmd* %81, i32 16)
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %115, %78
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @MBOX_LEN, align 4
  %86 = sdiv i32 %85, 8
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %83
  %89 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %90 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = ashr i32 %96, 32
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.cudbg_mbox_log*, %struct.cudbg_mbox_log** %9, align 8
  %101 = getelementptr inbounds %struct.cudbg_mbox_log, %struct.cudbg_mbox_log* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %99, i8** %105, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.cudbg_mbox_log*, %struct.cudbg_mbox_log** %9, align 8
  %110 = getelementptr inbounds %struct.cudbg_mbox_log, %struct.cudbg_mbox_log* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %108, i8** %114, align 8
  br label %115

115:                                              ; preds = %88
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %83

118:                                              ; preds = %83
  %119 = load %struct.cudbg_mbox_log*, %struct.cudbg_mbox_log** %9, align 8
  %120 = getelementptr inbounds %struct.cudbg_mbox_log, %struct.cudbg_mbox_log* %119, i32 1
  store %struct.cudbg_mbox_log* %120, %struct.cudbg_mbox_log** %9, align 8
  br label %121

121:                                              ; preds = %118, %77
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %48

124:                                              ; preds = %48
  %125 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %126 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %127 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %125, %struct.cudbg_buffer* %10, %struct.cudbg_buffer* %126)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %124, %42
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i8*, %struct.cudbg_buffer*) #2

declare dso_local %struct.mbox_cmd* @mbox_cmd_log_entry(%struct.mbox_cmd_log*, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.mbox_cmd*, i32) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
