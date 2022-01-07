; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_receive_cmdres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_receive_cmdres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32 }

@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no cmd response in card\0A\00", align 1
@IF_CS_RESP_LEN = common dso_local global i32 0, align 4
@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"card cmd buffer has invalid # of bytes (%d)\0A\00", align 1
@IF_CS_RESP = common dso_local global i32 0, align 4
@DNLD_RES_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32*, i32*)* @if_cs_receive_cmdres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_receive_cmdres(%struct.lbs_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %8, align 4
  %10 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %14 = call i8* @if_cs_read16(i32 %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @IF_CS_BIT_RESP, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %22 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @netdev_err(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  br label %92

26:                                               ; preds = %3
  %27 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IF_CS_RESP_LEN, align 4
  %31 = call i8* @if_cs_read16(i32 %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %26
  %43 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %44 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @netdev_err(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %92

49:                                               ; preds = %37
  %50 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IF_CS_RESP, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @if_cs_read16_rep(i32 %52, i32 %53, i32* %54, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %49
  %66 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %67 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IF_CS_RESP, align 4
  %70 = call i32 @if_cs_read8(i32 %68, i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %65, %49
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 8
  store i32 %80, i32* %78, align 4
  store i32 0, i32* %8, align 4
  %81 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %82 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %81, i32 0, i32 0
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load i32, i32* @DNLD_RES_RECEIVED, align 4
  %86 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %87 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %89 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %88, i32 0, i32 0
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  br label %92

92:                                               ; preds = %77, %42, %20
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i8* @if_cs_read16(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @if_cs_read16_rep(i32, i32, i32*, i32) #1

declare dso_local i32 @if_cs_read8(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
