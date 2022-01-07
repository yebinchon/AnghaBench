; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_check_flash_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_check_flash_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32*, i32, i32, i32, i32, i32*)* @be_check_flash_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_check_flash_crc(%struct.be_adapter* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_adapter*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  store %struct.be_adapter* %0, %struct.be_adapter** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load %struct.be_adapter*, %struct.be_adapter** %9, align 8
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = sub nsw i32 %23, 4
  %25 = call i32 @be_cmd_get_flash_crc(%struct.be_adapter* %19, i32* %20, i32 %21, i32 %22, i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %50

30:                                               ; preds = %7
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 4
  store i32 %36, i32* %16, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @memcmp(i32* %37, i32* %41, i32 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = load i32*, i32** %15, align 8
  store i32 1, i32* %45, align 4
  br label %48

46:                                               ; preds = %30
  %47 = load i32*, i32** %15, align 8
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %28
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @be_cmd_get_flash_crc(%struct.be_adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
