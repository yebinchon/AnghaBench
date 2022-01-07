; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_write_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_state_change = type { i32*, %struct.TYPE_3__, %struct.TYPE_4__, %struct.at86rf230_local* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.at86rf230_local = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@CMD_FB = common dso_local global i32 0, align 4
@CMD_WRITE = common dso_local global i32 0, align 4
@at86rf230_write_frame_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @at86rf230_write_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_write_frame(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.at86rf230_state_change*, align 8
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.at86rf230_state_change*
  store %struct.at86rf230_state_change* %9, %struct.at86rf230_state_change** %3, align 8
  %10 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %11 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %10, i32 0, i32 3
  %12 = load %struct.at86rf230_local*, %struct.at86rf230_local** %11, align 8
  store %struct.at86rf230_local* %12, %struct.at86rf230_local** %4, align 8
  %13 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %14 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %13, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %17 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %20 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @CMD_FB, align 4
  %22 = load i32, i32* @CMD_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %33, i32 %36, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 2
  %45 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %46 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @at86rf230_write_frame_complete, align 4
  %49 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %50 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %53 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %56 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %55, i32 0, i32 2
  %57 = call i32 @spi_async(i32 %54, %struct.TYPE_4__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %1
  %61 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %62 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  %64 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %65 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @at86rf230_async_error(%struct.at86rf230_local* %64, %struct.at86rf230_state_change* %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %1
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spi_async(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @at86rf230_async_error(%struct.at86rf230_local*, %struct.at86rf230_state_change*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
