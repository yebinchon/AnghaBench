; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_board.c_ocelot_rx_frame_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_board.c_ocelot_rx_frame_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32 }

@QS_XTR_RD = common dso_local global i32 0, align 4
@XTR_NOT_READY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot*, i32, i32, i32*)* @ocelot_rx_frame_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_rx_frame_word(%struct.ocelot* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocelot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %13 = load i32, i32* @QS_XTR_RD, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @ocelot_read_rix(%struct.ocelot* %12, i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @XTR_NOT_READY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %70

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %31, %25
  %27 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %28 = load i32, i32* @QS_XTR_RD, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ocelot_read_rix(%struct.ocelot* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @XTR_NOT_READY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %26, label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %67 [
    i32 134, label %38
    i32 133, label %41
    i32 132, label %41
    i32 131, label %41
    i32 130, label %41
    i32 128, label %41
    i32 129, label %61
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %70

41:                                               ; preds = %36, %36, %36, %36, %36
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @XTR_VALID_BYTES(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %45 = load i32, i32* @QS_XTR_RD, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ocelot_read_rix(%struct.ocelot* %44, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 129
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %52 = load i32, i32* @QS_XTR_RD, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ocelot_read_rix(%struct.ocelot* %51, i32 %52, i32 %53)
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %59

56:                                               ; preds = %41
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %70

61:                                               ; preds = %36
  %62 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %63 = load i32, i32* @QS_XTR_RD, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ocelot_read_rix(%struct.ocelot* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  store i32 4, i32* %5, align 4
  br label %70

67:                                               ; preds = %36
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  store i32 4, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %61, %59, %38, %22
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ocelot_read_rix(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @XTR_VALID_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
