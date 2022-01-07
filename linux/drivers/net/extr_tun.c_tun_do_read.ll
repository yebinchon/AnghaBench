; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32 }
%struct.tun_file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.sk_buff = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tun_do_read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, %struct.tun_file*, %struct.iov_iter*, i32, i8*)* @tun_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_do_read(%struct.tun_struct* %0, %struct.tun_file* %1, %struct.iov_iter* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tun_struct*, align 8
  %8 = alloca %struct.tun_file*, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xdp_frame*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %7, align 8
  store %struct.tun_file* %1, %struct.tun_file** %8, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @KERN_INFO, align 4
  %17 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %18 = call i32 @tun_debug(i32 %16, %struct.tun_struct* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %20 = call i32 @iov_iter_count(%struct.iov_iter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @tun_ptr_free(i8* %23)
  store i32 0, i32* %6, align 4
  br label %73

25:                                               ; preds = %5
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @tun_ring_recv(%struct.tun_file* %29, i32 %30, i32* %13)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %73

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i8*, i8** %11, align 8
  %39 = call i64 @tun_is_xdp_frame(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i8*, i8** %11, align 8
  %43 = call %struct.xdp_frame* @tun_ptr_to_xdp(i8* %42)
  store %struct.xdp_frame* %43, %struct.xdp_frame** %14, align 8
  %44 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %45 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %46 = load %struct.xdp_frame*, %struct.xdp_frame** %14, align 8
  %47 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %48 = call i32 @tun_put_user_xdp(%struct.tun_struct* %44, %struct.tun_file* %45, %struct.xdp_frame* %46, %struct.iov_iter* %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.xdp_frame*, %struct.xdp_frame** %14, align 8
  %50 = call i32 @xdp_return_frame(%struct.xdp_frame* %49)
  br label %71

51:                                               ; preds = %37
  %52 = load i8*, i8** %11, align 8
  %53 = bitcast i8* %52 to %struct.sk_buff*
  store %struct.sk_buff* %53, %struct.sk_buff** %15, align 8
  %54 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %55 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %57 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %58 = call i32 @tun_put_user(%struct.tun_struct* %54, %struct.tun_file* %55, %struct.sk_buff* %56, %struct.iov_iter* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %66 = call i32 @kfree_skb(%struct.sk_buff* %65)
  br label %70

67:                                               ; preds = %51
  %68 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %69 = call i32 @consume_skb(%struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %34, %22
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @tun_debug(i32, %struct.tun_struct*, i8*) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @tun_ptr_free(i8*) #1

declare dso_local i8* @tun_ring_recv(%struct.tun_file*, i32, i32*) #1

declare dso_local i64 @tun_is_xdp_frame(i8*) #1

declare dso_local %struct.xdp_frame* @tun_ptr_to_xdp(i8*) #1

declare dso_local i32 @tun_put_user_xdp(%struct.tun_struct*, %struct.tun_file*, %struct.xdp_frame*, %struct.iov_iter*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

declare dso_local i32 @tun_put_user(%struct.tun_struct*, %struct.tun_file*, %struct.sk_buff*, %struct.iov_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
