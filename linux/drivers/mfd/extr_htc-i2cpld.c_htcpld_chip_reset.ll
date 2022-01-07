; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.htcpld_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @htcpld_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcpld_chip_reset(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.htcpld_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.htcpld_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.htcpld_chip* %5, %struct.htcpld_chip** %3, align 8
  %6 = load %struct.htcpld_chip*, %struct.htcpld_chip** %3, align 8
  %7 = icmp ne %struct.htcpld_chip* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = load %struct.htcpld_chip*, %struct.htcpld_chip** %3, align 8
  %12 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.htcpld_chip*, %struct.htcpld_chip** %3, align 8
  %15 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %10, i32 %13)
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.htcpld_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
