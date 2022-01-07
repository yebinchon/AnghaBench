; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_afe = type { i32 }
%struct.adv748x_state = type { i32 }

@ADV748X_SDP_RO_10 = common dso_local global i32 0, align 4
@ADV748X_SDP_RO_10_IN_LOCK = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_afe*, i32*, i32*)* @adv748x_afe_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_afe_status(%struct.adv748x_afe* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adv748x_afe*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.adv748x_state*, align 8
  %9 = alloca i32, align 4
  store %struct.adv748x_afe* %0, %struct.adv748x_afe** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.adv748x_afe*, %struct.adv748x_afe** %5, align 8
  %11 = call %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe* %10)
  store %struct.adv748x_state* %11, %struct.adv748x_state** %8, align 8
  %12 = load %struct.adv748x_state*, %struct.adv748x_state** %8, align 8
  %13 = load i32, i32* @ADV748X_SDP_RO_10, align 4
  %14 = call i32 @adv748x_afe_read_ro_map(%struct.adv748x_state* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ADV748X_SDP_RO_10_IN_LOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %78

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ADV748X_SDP_RO_10_IN_LOCK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %78

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 112
  switch i32 %47, label %74 [
    i32 0, label %48
    i32 16, label %51
    i32 32, label %54
    i32 48, label %57
    i32 64, label %60
    i32 80, label %63
    i32 96, label %66
    i32 112, label %71
  ]

48:                                               ; preds = %45
  %49 = load i32, i32* @V4L2_STD_NTSC, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %77

51:                                               ; preds = %45
  %52 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %77

54:                                               ; preds = %45
  %55 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %77

57:                                               ; preds = %45
  %58 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %77

60:                                               ; preds = %45
  %61 = load i32, i32* @V4L2_STD_PAL, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %77

63:                                               ; preds = %45
  %64 = load i32, i32* @V4L2_STD_SECAM, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %77

66:                                               ; preds = %45
  %67 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %68 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %69 = or i32 %67, %68
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %77

71:                                               ; preds = %45
  %72 = load i32, i32* @V4L2_STD_SECAM, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %77

74:                                               ; preds = %45
  %75 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %71, %66, %63, %60, %57, %54, %51, %48
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %42, %36, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe*) #1

declare dso_local i32 @adv748x_afe_read_ro_map(%struct.adv748x_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
