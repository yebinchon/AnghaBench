; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_match_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_match_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_prs_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_prs_entry*, i32, i16)* @mvpp2_prs_match_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_match_vid(%struct.mvpp2_prs_entry* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.mvpp2_prs_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.mvpp2_prs_entry* %0, %struct.mvpp2_prs_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %7 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 0
  %10 = load i16, i16* %6, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 3840
  %13 = ashr i32 %12, 8
  %14 = trunc i32 %13 to i16
  %15 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %7, i32 %9, i16 zeroext %14, i32 15)
  %16 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i16
  %23 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %16, i32 %18, i16 zeroext %22, i32 255)
  ret void
}

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
