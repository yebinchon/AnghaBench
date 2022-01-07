; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_enable_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_enable_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_FDIRHKEY = common dso_local global i32 0, align 4
@IXGBE_ATR_BUCKET_HASH_KEY = common dso_local global i32 0, align 4
@IXGBE_FDIRSKEY = common dso_local global i32 0, align 4
@IXGBE_ATR_SIGNATURE_HASH_KEY = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL = common dso_local global i32 0, align 4
@IXGBE_FDIR_INIT_DONE_POLL = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_INIT_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Flow Director poll time exceeded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*, i32)* @ixgbe_fdir_enable_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_fdir_enable_82599(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = load i32, i32* @IXGBE_FDIRHKEY, align 4
  %8 = load i32, i32* @IXGBE_ATR_BUCKET_HASH_KEY, align 4
  %9 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %6, i32 %7, i32 %8)
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = load i32, i32* @IXGBE_FDIRSKEY, align 4
  %12 = load i32, i32* @IXGBE_ATR_SIGNATURE_HASH_KEY, align 4
  %13 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %10, i32 %11, i32 %12)
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %34, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IXGBE_FDIR_INIT_DONE_POLL, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %27 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %25, i32 %26)
  %28 = load i32, i32* @IXGBE_FDIRCTRL_INIT_DONE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %37

32:                                               ; preds = %24
  %33 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %20

37:                                               ; preds = %31, %20
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IXGBE_FDIR_INIT_DONE_POLL, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = call i32 @hw_dbg(%struct.ixgbe_hw* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
