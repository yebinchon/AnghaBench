; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_echo_skb_matches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_echo_skb_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.can_frame = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, %struct.sk_buff*)* @ican3_echo_skb_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_echo_skb_matches(%struct.ican3_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.can_frame*, align 8
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.can_frame*
  store %struct.can_frame* %12, %struct.can_frame** %6, align 8
  %13 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %14 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %13, i32 0, i32 0
  %15 = call %struct.sk_buff* @skb_peek(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.can_frame*
  store %struct.can_frame* %23, %struct.can_frame** %8, align 8
  %24 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %25 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %28 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %54

32:                                               ; preds = %19
  %33 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %34 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %37 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %32
  %42 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %43 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @memcmp(i32 %44, i32 %47, i64 %50)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %41, %40, %31, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
