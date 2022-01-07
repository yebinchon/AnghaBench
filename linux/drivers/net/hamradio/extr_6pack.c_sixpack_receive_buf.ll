; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_sixpack_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_sixpack_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.sixpack = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SIXPF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @sixpack_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sixpack_receive_buf(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sixpack*, align 8
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %61

14:                                               ; preds = %4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %16 = call %struct.sixpack* @sp_get(%struct.tty_struct* %15)
  store %struct.sixpack* %16, %struct.sixpack** %9, align 8
  %17 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %18 = icmp ne %struct.sixpack* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %61

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %51, %50, %20
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* @SIXPF_ERROR, align 4
  %38 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %39 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %38, i32 0, i32 1
  %40 = call i32 @test_and_set_bit(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %44 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %42, %36
  br label %22

51:                                               ; preds = %30, %25
  br label %22

52:                                               ; preds = %22
  %53 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @sixpack_decode(%struct.sixpack* %53, i8* %54, i32 %55)
  %57 = load %struct.sixpack*, %struct.sixpack** %9, align 8
  %58 = call i32 @sp_put(%struct.sixpack* %57)
  %59 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %60 = call i32 @tty_unthrottle(%struct.tty_struct* %59)
  br label %61

61:                                               ; preds = %52, %19, %13
  ret void
}

declare dso_local %struct.sixpack* @sp_get(%struct.tty_struct*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sixpack_decode(%struct.sixpack*, i8*, i32) #1

declare dso_local i32 @sp_put(%struct.sixpack*) #1

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
