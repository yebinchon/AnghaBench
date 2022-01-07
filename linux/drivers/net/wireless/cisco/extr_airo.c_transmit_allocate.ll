; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_transmit_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_transmit_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CMD_ALLOCATETX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@EVSTAT = common dso_local global i32 0, align 4
@EV_ALLOC = common dso_local global i32 0, align 4
@TXALLOCFID = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@TXCTL_TXOK = common dso_local global i32 0, align 4
@TXCTL_TXEX = common dso_local global i32 0, align 4
@TXCTL_802_11 = common dso_local global i32 0, align 4
@TXCTL_ETHERNET = common dso_local global i32 0, align 4
@TXCTL_NORELEASE = common dso_local global i32 0, align 4
@TXCTL_802_3 = common dso_local global i32 0, align 4
@BAP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32, i32)* @transmit_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmit_allocate(%struct.airo_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 3000, i32* %8, align 4
  %13 = load i32, i32* @CMD_ALLOCATETX, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %18 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %17, i32 0, i32 0
  %19 = call i64 @down_interruptible(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %108

23:                                               ; preds = %3
  %24 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %25 = call i64 @issuecommand(%struct.airo_info* %24, %struct.TYPE_6__* %9, %struct.TYPE_5__* %10)
  %26 = load i64, i64* @SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @ERROR, align 4
  store i32 %29, i32* %11, align 4
  br label %103

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 65280
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ERROR, align 4
  store i32 %36, i32* %11, align 4
  br label %103

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %51, %37
  %39 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %40 = load i32, i32* @EVSTAT, align 4
  %41 = call i32 @IN4500(%struct.airo_info* %39, i32 %40)
  %42 = load i32, i32* @EV_ALLOC, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %45, %38
  %50 = phi i1 [ false, %38 ], [ %48, %45 ]
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %38

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @ERROR, align 4
  store i32 %56, i32* %11, align 4
  br label %103

57:                                               ; preds = %52
  %58 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %59 = load i32, i32* @TXALLOCFID, align 4
  %60 = call i32 @IN4500(%struct.airo_info* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %62 = load i32, i32* @EVACK, align 4
  %63 = load i32, i32* @EV_ALLOC, align 4
  %64 = call i32 @OUT4500(%struct.airo_info* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %57
  %68 = load i32, i32* @TXCTL_TXOK, align 4
  %69 = load i32, i32* @TXCTL_TXEX, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @TXCTL_802_11, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @TXCTL_ETHERNET, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @TXCTL_NORELEASE, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @cpu_to_le16(i32 %76)
  store i32 %77, i32* %12, align 4
  br label %89

78:                                               ; preds = %57
  %79 = load i32, i32* @TXCTL_TXOK, align 4
  %80 = load i32, i32* @TXCTL_TXEX, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @TXCTL_802_3, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @TXCTL_ETHERNET, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @TXCTL_NORELEASE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @cpu_to_le16(i32 %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %78, %67
  %90 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @BAP1, align 4
  %93 = call i64 @bap_setup(%struct.airo_info* %90, i32 %91, i32 8, i32 %92)
  %94 = load i64, i64* @SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @ERROR, align 4
  store i32 %97, i32* %11, align 4
  br label %102

98:                                               ; preds = %89
  %99 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %100 = load i32, i32* @BAP1, align 4
  %101 = call i32 @bap_write(%struct.airo_info* %99, i32* %12, i32 4, i32 %100)
  br label %102

102:                                              ; preds = %98, %96
  br label %103

103:                                              ; preds = %102, %55, %35, %28
  %104 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %105 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %104, i32 0, i32 0
  %106 = call i32 @up(i32* %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %103, %21
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i64 @issuecommand(%struct.airo_info*, %struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @bap_setup(%struct.airo_info*, i32, i32, i32) #1

declare dso_local i32 @bap_write(%struct.airo_info*, i32*, i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
