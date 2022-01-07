; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_ptr_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_ptr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tun_ptr_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xdp_frame*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %19

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @tun_is_xdp_frame(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = call %struct.xdp_frame* @tun_ptr_to_xdp(i8* %12)
  store %struct.xdp_frame* %13, %struct.xdp_frame** %3, align 8
  %14 = load %struct.xdp_frame*, %struct.xdp_frame** %3, align 8
  %15 = call i32 @xdp_return_frame(%struct.xdp_frame* %14)
  br label %19

16:                                               ; preds = %7
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @__skb_array_destroy_skb(i8* %17)
  br label %19

19:                                               ; preds = %6, %16, %11
  ret void
}

declare dso_local i64 @tun_is_xdp_frame(i8*) #1

declare dso_local %struct.xdp_frame* @tun_ptr_to_xdp(i8*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

declare dso_local i32 @__skb_array_destroy_skb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
