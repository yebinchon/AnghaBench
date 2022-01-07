; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_lz24bp_ppl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_lz24bp_ppl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.ucbus_write_cmd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32)* @lz24bp_ppl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lz24bp_ppl(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.ucbus_write_cmd], align 16
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [2 x %struct.ucbus_write_cmd], [2 x %struct.ucbus_write_cmd]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %6, i32 0, i32 0
  store i32 63504, i32* %7, align 8
  %8 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %6, i32 0, i32 1
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %6, i64 1
  %12 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %11, i32 0, i32 0
  store i32 63505, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %11, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.ucbus_write_cmd], [2 x %struct.ucbus_write_cmd]* %5, i64 0, i64 0
  %18 = getelementptr inbounds [2 x %struct.ucbus_write_cmd], [2 x %struct.ucbus_write_cmd]* %5, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(%struct.ucbus_write_cmd* %18)
  %20 = call i32 @ucbus_write(i32* %16, %struct.ucbus_write_cmd* %17, i32 %19, i32 2)
  ret void
}

declare dso_local i32 @ucbus_write(i32*, %struct.ucbus_write_cmd*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ucbus_write_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
