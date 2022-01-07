; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6165_ptp_clock_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6165_ptp_clock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclecounter = type { i32 }
%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PTP_GC_TIME_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyclecounter*)* @mv88e6165_ptp_clock_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6165_ptp_clock_read(%struct.cyclecounter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyclecounter*, align 8
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.cyclecounter* %0, %struct.cyclecounter** %3, align 8
  %7 = load %struct.cyclecounter*, %struct.cyclecounter** %3, align 8
  %8 = call %struct.mv88e6xxx_chip* @cc_to_chip(%struct.cyclecounter* %7)
  store %struct.mv88e6xxx_chip* %8, %struct.mv88e6xxx_chip** %4, align 8
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %10 = load i32, i32* @MV88E6XXX_PTP_GC_TIME_LO, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = call i32 @mv88e6xxx_tai_read(%struct.mv88e6xxx_chip* %9, i32 %10, i32* %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 16
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %21, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.mv88e6xxx_chip* @cc_to_chip(%struct.cyclecounter*) #1

declare dso_local i32 @mv88e6xxx_tai_read(%struct.mv88e6xxx_chip*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
