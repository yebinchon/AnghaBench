; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_image_file_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_image_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }

@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"About to write File-data: %08x bytes to offset %08x\0A\00", align 1
@QED_PUT_FILE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32**, i32*)* @qed_nvm_flash_image_file_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_nvm_flash_image_file_data(%struct.qed_dev* %0, i32** %1, i32* %2) #0 {
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32**, i32*** %5, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  store i32* %12, i32** %10, align 8
  %13 = load i32**, i32*** %5, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  store i32* %18, i32** %16, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 0)
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32**, i32*** %5, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32* %31, i32** %29, align 8
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32* %37, i32** %35, align 8
  %38 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %39 = load i32, i32* @NETIF_MSG_DRV, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @DP_VERBOSE(%struct.qed_dev* %38, i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %44 = load i32, i32* @QED_PUT_FILE_DATA, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32**, i32*** %5, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @qed_mcp_nvm_write(%struct.qed_dev* %43, i32 %44, i32 %45, i8* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32**, i32*** %5, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %52, align 8
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_mcp_nvm_write(%struct.qed_dev*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
