; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mac_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mac_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@MAC_CSR_CMD = common dso_local global i32 0, align 4
@MAC_CSR_CMD_CSR_BUSY_ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"smsc911x_mac_write failed, MAC busy at entry\00", align 1
@MAC_CSR_DATA = common dso_local global i32 0, align 4
@BYTE_TEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"smsc911x_mac_write failed, MAC busy after write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32, i32)* @smsc911x_mac_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_mac_write(%struct.smsc911x_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %9 = call i32 @SMSC_ASSERT_MAC_LOCK(%struct.smsc911x_data* %8)
  %10 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %11 = load i32, i32* @MAC_CSR_CMD, align 4
  %12 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAC_CSR_CMD_CSR_BUSY_, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %20 = load i32, i32* @hw, align 4
  %21 = call i32 @SMSC_WARN(%struct.smsc911x_data* %19, i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %24 = load i32, i32* @MAC_CSR_DATA, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %23, i32 %24, i32 %25)
  %27 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %28 = load i32, i32* @MAC_CSR_CMD, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  %31 = load i32, i32* @MAC_CSR_CMD_CSR_BUSY_, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %27, i32 %28, i32 %32)
  %34 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %35 = load i32, i32* @BYTE_TEST, align 4
  %36 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %38 = call i64 @smsc911x_mac_complete(%struct.smsc911x_data* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %48

44:                                               ; preds = %22
  %45 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %46 = load i32, i32* @hw, align 4
  %47 = call i32 @SMSC_WARN(%struct.smsc911x_data* %45, i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %43, %18
  ret void
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
