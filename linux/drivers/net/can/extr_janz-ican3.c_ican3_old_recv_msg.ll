; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_old_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_old_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i64, i32 }
%struct.ican3_msg = type { i32 }

@QUEUE_OLD_CONTROL = common dso_local global i32 0, align 4
@MSYNC_PEER = common dso_local global i64 0, align 8
@MSYNC_LOCL = common dso_local global i64 0, align 8
@MSYNC_RB_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no mbox for reading\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MSYNC_RBLW = common dso_local global i32 0, align 4
@MSYNC_RB0 = common dso_local global i32 0, align 4
@MSYNC_RB1 = common dso_local global i32 0, align 4
@QUEUE_OLD_RB0 = common dso_local global i32 0, align 4
@QUEUE_OLD_RB1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, %struct.ican3_msg*)* @ican3_old_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_old_recv_msg(%struct.ican3_dev* %0, %struct.ican3_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca %struct.ican3_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store %struct.ican3_msg* %1, %struct.ican3_msg** %5, align 8
  %11 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %12 = load i32, i32* @QUEUE_OLD_CONTROL, align 4
  %13 = call i32 @ican3_set_page(%struct.ican3_dev* %11, i32 %12)
  %14 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MSYNC_PEER, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @ioread8(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %21 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MSYNC_LOCL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ioread8(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @MSYNC_RB_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %35 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netdev_dbg(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %99

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @MSYNC_RB_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @MSYNC_RB_MASK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MSYNC_RBLW, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @MSYNC_RB0, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @MSYNC_RB1, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %6, align 4
  br label %68

57:                                               ; preds = %40
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MSYNC_RB0, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @MSYNC_RB0, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @MSYNC_RB1, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %55
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MSYNC_RB0, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @QUEUE_OLD_RB0, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @QUEUE_OLD_RB1, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ican3_set_page(%struct.ican3_dev* %78, i32 %79)
  %81 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %82 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %83 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @memcpy_fromio(%struct.ican3_msg* %81, i64 %84, i32 4)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %90 = load i32, i32* @QUEUE_OLD_CONTROL, align 4
  %91 = call i32 @ican3_set_page(%struct.ican3_dev* %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %94 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MSYNC_LOCL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @iowrite8(i32 %92, i64 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %76, %33
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @ican3_set_page(%struct.ican3_dev*, i32) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @memcpy_fromio(%struct.ican3_msg*, i64, i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
