; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_push_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_push_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.gtp_pktinfo = type { %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32 }

@GTP0_PORT = common dso_local global i32 0, align 4
@GTP1U_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.gtp_pktinfo*)* @gtp_push_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtp_push_header(%struct.sk_buff* %0, %struct.gtp_pktinfo* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.gtp_pktinfo*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.gtp_pktinfo* %1, %struct.gtp_pktinfo** %4, align 8
  %5 = load %struct.gtp_pktinfo*, %struct.gtp_pktinfo** %4, align 8
  %6 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %30 [
    i32 129, label %10
    i32 128, label %20
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @GTP0_PORT, align 4
  %12 = call i8* @htons(i32 %11)
  %13 = load %struct.gtp_pktinfo*, %struct.gtp_pktinfo** %4, align 8
  %14 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.gtp_pktinfo*, %struct.gtp_pktinfo** %4, align 8
  %17 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @gtp0_push_header(%struct.sk_buff* %15, %struct.TYPE_3__* %18)
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @GTP1U_PORT, align 4
  %22 = call i8* @htons(i32 %21)
  %23 = load %struct.gtp_pktinfo*, %struct.gtp_pktinfo** %4, align 8
  %24 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.gtp_pktinfo*, %struct.gtp_pktinfo** %4, align 8
  %27 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @gtp1_push_header(%struct.sk_buff* %25, %struct.TYPE_3__* %28)
  br label %30

30:                                               ; preds = %2, %20, %10
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @gtp0_push_header(%struct.sk_buff*, %struct.TYPE_3__*) #1

declare dso_local i32 @gtp1_push_header(%struct.sk_buff*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
