; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_process_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_process_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i32*, i32, %struct.mmc_command* }
%struct.mmc_command = type { i32 }
%struct.mmc_request = type { %struct.mmc_command*, i64, %struct.mmc_command* }

@CMDREQ_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.mmc_request*)* @tmio_process_mrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_process_mrq(%struct.tmio_mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 2
  %9 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %10 = icmp ne %struct.mmc_command* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %12, i32 0, i32 3
  %14 = load %struct.mmc_command*, %struct.mmc_command** %13, align 8
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 2
  %17 = load %struct.mmc_command*, %struct.mmc_command** %16, align 8
  %18 = icmp ne %struct.mmc_command* %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 2
  %22 = load %struct.mmc_command*, %struct.mmc_command** %21, align 8
  store %struct.mmc_command* %22, %struct.mmc_command** %5, align 8
  br label %42

23:                                               ; preds = %11, %2
  %24 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 0
  %26 = load %struct.mmc_command*, %struct.mmc_command** %25, align 8
  store %struct.mmc_command* %26, %struct.mmc_command** %5, align 8
  %27 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %33 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @tmio_mmc_start_data(%struct.tmio_mmc_host* %32, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %55

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %19
  %43 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %44 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %45 = call i32 @tmio_mmc_start_command(%struct.tmio_mmc_host* %43, %struct.mmc_command* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %55

49:                                               ; preds = %42
  %50 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %51 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %50, i32 0, i32 2
  %52 = load i32, i32* @CMDREQ_TIMEOUT, align 4
  %53 = call i32 @msecs_to_jiffies(i32 %52)
  %54 = call i32 @schedule_delayed_work(i32* %51, i32 %53)
  br label %68

55:                                               ; preds = %48, %39
  %56 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %59, i32 0, i32 0
  %61 = load %struct.mmc_command*, %struct.mmc_command** %60, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %64 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %67 = call i32 @mmc_request_done(i32 %65, %struct.mmc_request* %66)
  br label %68

68:                                               ; preds = %55, %49
  ret void
}

declare dso_local i32 @tmio_mmc_start_data(%struct.tmio_mmc_host*, i64) #1

declare dso_local i32 @tmio_mmc_start_command(%struct.tmio_mmc_host*, %struct.mmc_command*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
