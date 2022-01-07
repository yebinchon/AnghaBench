; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_translate_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_translate_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_client = type { i32 }
%struct.at24_data = type { i32, %struct.at24_client* }

@AT24_FLAG_ADDR16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.at24_client* (%struct.at24_data*, i32*)* @at24_translate_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.at24_client* @at24_translate_offset(%struct.at24_data* %0, i32* %1) #0 {
  %3 = alloca %struct.at24_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.at24_data* %0, %struct.at24_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.at24_data*, %struct.at24_data** %3, align 8
  %7 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @AT24_FLAG_ADDR16, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = lshr i32 %14, 16
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 65535
  store i32 %18, i32* %16, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = lshr i32 %21, 8
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %19, %12
  %27 = load %struct.at24_data*, %struct.at24_data** %3, align 8
  %28 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %27, i32 0, i32 1
  %29 = load %struct.at24_client*, %struct.at24_client** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.at24_client, %struct.at24_client* %29, i64 %31
  ret %struct.at24_client* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
