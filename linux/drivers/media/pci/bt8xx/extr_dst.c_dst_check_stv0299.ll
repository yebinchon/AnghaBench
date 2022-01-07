; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_check_stv0299.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_check_stv0299.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32 }

@__const.dst_check_stv0299.check_stv0299 = private unnamed_addr constant [8 x i32] [i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [19 x i8] c"Cmd=[0x04] failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Found a STV0299 NIM\0A\00", align 1
@TUNER_TYPE_STV0299 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_check_stv0299 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_check_stv0299(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca [8 x i32], align 16
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %5 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x i32]* @__const.dst_check_stv0299.check_stv0299 to i8*), i64 32, i1 false)
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %7 = call i32 @dst_check_sum(i32* %6, i32 7)
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  store i32 %7, i32* %8, align 4
  %9 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %11 = call i64 @dst_command(%struct.dst_state* %9, i32* %10, i32 8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %17 = call i32 @debug_dst_buffer(%struct.dst_state* %16)
  %18 = bitcast [8 x i32]* %4 to i32**
  %19 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %20 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %19, i32 0, i32 1
  %21 = call i64 @memcmp(i32** %18, i32* %20, i32 8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @TUNER_TYPE_STV0299, align 4
  %26 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %27 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %23, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dst_check_sum(i32*, i32) #2

declare dso_local i64 @dst_command(%struct.dst_state*, i32*, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @debug_dst_buffer(%struct.dst_state*) #2

declare dso_local i64 @memcmp(i32**, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
