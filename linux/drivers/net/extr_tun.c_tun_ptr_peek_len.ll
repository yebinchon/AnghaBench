; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_ptr_peek_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_ptr_peek_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tun_ptr_peek_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_ptr_peek_len(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xdp_frame*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @likely(i8* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @tun_is_xdp_frame(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.xdp_frame* @tun_ptr_to_xdp(i8* %13)
  store %struct.xdp_frame* %14, %struct.xdp_frame** %4, align 8
  %15 = load %struct.xdp_frame*, %struct.xdp_frame** %4, align 8
  %16 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @__skb_array_len_with_tag(i8* %19)
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %18, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @likely(i8*) #1

declare dso_local i64 @tun_is_xdp_frame(i8*) #1

declare dso_local %struct.xdp_frame* @tun_ptr_to_xdp(i8*) #1

declare dso_local i32 @__skb_array_len_with_tag(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
