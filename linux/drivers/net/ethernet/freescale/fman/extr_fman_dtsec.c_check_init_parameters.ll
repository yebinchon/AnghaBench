; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_dtsec.c_check_init_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_dtsec.c_check_init_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_mac = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@SPEED_10000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"1G MAC driver supports 1G or lower speeds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Ethernet MAC Must have a valid MAC Address\0A\00", align 1
@MAX_PACKET_ALIGNMENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"packetAlignmentPadding can't be > than %d\0A\00", align 1
@MAX_INTER_PACKET_GAP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Inter packet gap can't be greater than %d\0A\00", align 1
@MAX_RETRANSMISSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"maxRetransmission can't be greater than %d\0A\00", align 1
@MAX_COLLISION_WINDOW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"collisionWindow can't be greater than %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"uninitialized exception_cb\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"uninitialized event_cb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman_mac*)* @check_init_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_init_parameters(%struct.fman_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fman_mac*, align 8
  store %struct.fman_mac* %0, %struct.fman_mac** %3, align 8
  %4 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %5 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SPEED_10000, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %109

13:                                               ; preds = %1
  %14 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %15 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %109

22:                                               ; preds = %13
  %23 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %24 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_PACKET_ALIGNMENT, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i64, i64* @MAX_PACKET_ALIGNMENT, align 8
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %109

35:                                               ; preds = %22
  %36 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %37 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAX_INTER_PACKET_GAP, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %35
  %44 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %45 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MAX_INTER_PACKET_GAP, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %53 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAX_INTER_PACKET_GAP, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51, %43, %35
  %60 = load i64, i64* @MAX_INTER_PACKET_GAP, align 8
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %109

64:                                               ; preds = %51
  %65 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %66 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MAX_RETRANSMISSION, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i64, i64* @MAX_RETRANSMISSION, align 8
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %109

77:                                               ; preds = %64
  %78 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %79 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MAX_COLLISION_WINDOW, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load i64, i64* @MAX_COLLISION_WINDOW, align 8
  %87 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %109

90:                                               ; preds = %77
  %91 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %92 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %109

99:                                               ; preds = %90
  %100 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %101 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %109

108:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %104, %95, %85, %72, %59, %30, %18, %9
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
