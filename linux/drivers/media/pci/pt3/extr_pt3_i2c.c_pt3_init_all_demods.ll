; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_pt3_init_all_demods.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_pt3_init_all_demods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_board = type { i64* }

@REG_I2C_R = common dso_local global i64 0, align 8
@PT3_CMD_ADDR_INIT_DEMOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt3_init_all_demods(%struct.pt3_board* %0) #0 {
  %2 = alloca %struct.pt3_board*, align 8
  store %struct.pt3_board* %0, %struct.pt3_board** %2, align 8
  %3 = load %struct.pt3_board*, %struct.pt3_board** %2, align 8
  %4 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_I2C_R, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @ioread32(i64 %9)
  %11 = load %struct.pt3_board*, %struct.pt3_board** %2, align 8
  %12 = load i32, i32* @PT3_CMD_ADDR_INIT_DEMOD, align 4
  %13 = call i32 @send_i2c_cmd(%struct.pt3_board* %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @send_i2c_cmd(%struct.pt3_board*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
