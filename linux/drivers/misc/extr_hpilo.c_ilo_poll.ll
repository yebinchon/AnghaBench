; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ilo_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ilo_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ccb_data* }
%struct.ccb_data = type { i32, i32, %struct.ccb }
%struct.ccb = type { i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @ilo_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilo_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ccb_data*, align 8
  %7 = alloca %struct.ccb*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.ccb_data*, %struct.ccb_data** %9, align 8
  store %struct.ccb_data* %10, %struct.ccb_data** %6, align 8
  %11 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %12 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %11, i32 0, i32 2
  store %struct.ccb* %12, %struct.ccb** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %15 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %14, i32 0, i32 1
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, i32* %16)
  %18 = load %struct.ccb*, %struct.ccb** %7, align 8
  %19 = call i64 @is_channel_reset(%struct.ccb* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EPOLLERR, align 4
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %25 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ccb*, %struct.ccb** %7, align 8
  %28 = call i64 @ilo_pkt_recv(i32 %26, %struct.ccb* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @EPOLLIN, align 4
  %32 = load i32, i32* @EPOLLRDNORM, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @is_channel_reset(%struct.ccb*) #1

declare dso_local i64 @ilo_pkt_recv(i32, %struct.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
