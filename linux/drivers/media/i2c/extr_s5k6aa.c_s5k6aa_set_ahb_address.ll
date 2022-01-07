; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_ahb_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_ahb_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@AHB_MSB_ADDR_PTR = common dso_local global i32 0, align 4
@GEN_REG_OFFSH = common dso_local global i32 0, align 4
@REG_CMDRD_ADDRH = common dso_local global i32 0, align 4
@HOST_SWIF_OFFSH = common dso_local global i32 0, align 4
@REG_CMDWR_ADDRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @s5k6aa_set_ahb_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_ahb_address(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @AHB_MSB_ADDR_PTR, align 4
  %7 = load i32, i32* @GEN_REG_OFFSH, align 4
  %8 = call i32 @s5k6aa_i2c_write(%struct.i2c_client* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = load i32, i32* @REG_CMDRD_ADDRH, align 4
  %16 = load i32, i32* @HOST_SWIF_OFFSH, align 4
  %17 = call i32 @s5k6aa_i2c_write(%struct.i2c_client* %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = load i32, i32* @REG_CMDWR_ADDRH, align 4
  %25 = load i32, i32* @HOST_SWIF_OFFSH, align 4
  %26 = call i32 @s5k6aa_i2c_write(%struct.i2c_client* %23, i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %20, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @s5k6aa_i2c_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
