; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_wait_for_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_wait_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }
%struct.mmc_request = type { %struct.mmc_command* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host* %0, %struct.mmc_command* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_request, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.mmc_request* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @memset(i32 %18, i32 0, i32 4)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %24 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 0
  store %struct.mmc_command* %23, %struct.mmc_command** %24, align 8
  %25 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %28 = call i32 @mmc_wait_for_req(%struct.mmc_host* %27, %struct.mmc_request* %7)
  %29 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @mmc_wait_for_req(%struct.mmc_host*, %struct.mmc_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
