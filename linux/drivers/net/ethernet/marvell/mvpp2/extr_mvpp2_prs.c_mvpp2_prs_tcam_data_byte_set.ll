; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_tcam_data_byte_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_tcam_data_byte_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_prs_entry = type { i32* }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_prs_entry*, i32, i8, i8)* @mvpp2_prs_tcam_data_byte_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.mvpp2_prs_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.mvpp2_prs_entry* %0, %struct.mvpp2_prs_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @MVPP2_PRS_BYTE_IN_WORD(i32 %10)
  %12 = load i32, i32* @BITS_PER_BYTE, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = shl i32 255, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %18 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @MVPP2_PRS_BYTE_TO_WORD(i32 %20)
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %16
  store i32 %24, i32* %22, align 4
  %25 = call i32 @MVPP2_PRS_TCAM_EN(i8 zeroext -1)
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %30 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @MVPP2_PRS_BYTE_TO_WORD(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %28
  store i32 %36, i32* %34, align 4
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %42 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @MVPP2_PRS_BYTE_TO_WORD(i32 %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %40
  store i32 %48, i32* %46, align 4
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %50, %51
  %53 = trunc i32 %52 to i8
  %54 = call i32 @MVPP2_PRS_TCAM_EN(i8 zeroext %53)
  %55 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %56 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @MVPP2_PRS_BYTE_TO_WORD(i32 %58)
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %54
  store i32 %62, i32* %60, align 4
  ret void
}

declare dso_local i32 @MVPP2_PRS_BYTE_IN_WORD(i32) #1

declare dso_local i64 @MVPP2_PRS_BYTE_TO_WORD(i32) #1

declare dso_local i32 @MVPP2_PRS_TCAM_EN(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
