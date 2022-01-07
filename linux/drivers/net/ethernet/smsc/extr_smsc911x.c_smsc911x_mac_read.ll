; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mac_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mac_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@MAC_CSR_CMD = common dso_local global i32 0, align 4
@MAC_CSR_CMD_CSR_BUSY_ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MAC busy at entry\00", align 1
@MAC_CSR_CMD_R_NOT_W_ = common dso_local global i32 0, align 4
@BYTE_TEST = common dso_local global i32 0, align 4
@MAC_CSR_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MAC busy after read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*, i32)* @smsc911x_mac_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_mac_read(%struct.smsc911x_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %8 = call i32 @SMSC_ASSERT_MAC_LOCK(%struct.smsc911x_data* %7)
  %9 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %10 = load i32, i32* @MAC_CSR_CMD, align 4
  %11 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAC_CSR_CMD_CSR_BUSY_, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %19 = load i32, i32* @hw, align 4
  %20 = call i32 @SMSC_WARN(%struct.smsc911x_data* %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %23 = load i32, i32* @MAC_CSR_CMD, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 255
  %26 = load i32, i32* @MAC_CSR_CMD_CSR_BUSY_, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAC_CSR_CMD_R_NOT_W_, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %22, i32 %23, i32 %29)
  %31 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %32 = load i32, i32* @BYTE_TEST, align 4
  %33 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %35 = call i64 @smsc911x_mac_complete(%struct.smsc911x_data* %34)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %21
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %42 = load i32, i32* @MAC_CSR_DATA, align 4
  %43 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %21
  %45 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %46 = load i32, i32* @hw, align 4
  %47 = call i32 @SMSC_WARN(%struct.smsc911x_data* %45, i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %40, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @SMSC_ASSERT_MAC_LOCK(%struct.smsc911x_data*) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @smsc911x_mac_complete(%struct.smsc911x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
