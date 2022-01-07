; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_tone_power_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_tone_power_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i64, i32* }

@__const.dst_tone_power_cmd.packet = private unnamed_addr constant [8 x i32] [i32 0, i32 9, i32 255, i32 255, i32 1, i32 0, i32 0, i32 0], align 16
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_tone_power_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_tone_power_cmd(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca [8 x i32], align 16
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %5 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x i32]* @__const.dst_tone_power_cmd.packet to i8*), i64 32, i1 false)
  %6 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %7 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %16 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  store i32 %19, i32* %20, align 16
  %21 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %22 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %34 = call i32 @dst_check_sum(i32* %33, i32 7)
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  store i32 %34, i32* %35, align 4
  %36 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %38 = call i32 @dst_command(%struct.dst_state* %36, i32* %37, i32 8)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %14, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dst_check_sum(i32*, i32) #2

declare dso_local i32 @dst_command(%struct.dst_state*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
