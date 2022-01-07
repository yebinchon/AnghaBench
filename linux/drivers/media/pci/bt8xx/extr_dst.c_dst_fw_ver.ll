; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32*, i32 }

@__const.dst_fw_ver.get_ver = private unnamed_addr constant [8 x i32] [i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [21 x i8] c"Unsupported Command\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Firmware Ver = %x.%x Build = %02x, on %x:%x, %x-%x-20%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_fw_ver(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca [8 x i32], align 16
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %5 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x i32]* @__const.dst_fw_ver.get_ver to i8*), i64 32, i1 false)
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
  %14 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %17 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %16, i32 0, i32 0
  %18 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 1
  %20 = call i32 @memcpy(i32** %17, i32* %19, i32 8)
  %21 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %22 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 4
  %27 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %34 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %39 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %44 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %49 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %54 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %59 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %32, i32 %37, i32 %42, i32 %47, i32 %52, i32 %57, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %15, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dst_check_sum(i32*, i32) #2

declare dso_local i64 @dst_command(%struct.dst_state*, i32*, i32) #2

declare dso_local i32 @dprintk(i32, i8*) #2

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
