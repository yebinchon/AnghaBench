; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_sec_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_sec_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_txe_hw = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"sec write: aliveness not asserted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_txe_hw*, i64, i32)* @mei_txe_sec_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_txe_sec_reg_write(%struct.mei_txe_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mei_txe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mei_txe_hw* %0, %struct.mei_txe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %4, align 8
  %8 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @mei_txe_sec_reg_write_silent(%struct.mei_txe_hw* %14, i64 %15, i32 %16)
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @mei_txe_sec_reg_write_silent(%struct.mei_txe_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
