; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.realtek_smi* }
%struct.realtek_smi = type { i32, i32, %struct.rtl8366_mib_counter* }
%struct.rtl8366_mib_counter = type { i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8366_get_strings(%struct.dsa_switch* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.realtek_smi*, align 8
  %10 = alloca %struct.rtl8366_mib_counter*, align 8
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.realtek_smi*, %struct.realtek_smi** %13, align 8
  store %struct.realtek_smi* %14, %struct.realtek_smi** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %17 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %49

21:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %25 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %30 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %29, i32 0, i32 2
  %31 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %31, i64 %33
  store %struct.rtl8366_mib_counter* %34, %struct.rtl8366_mib_counter** %10, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %10, align 8
  %42 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %45 = call i32 @strncpy(i32* %40, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %22

49:                                               ; preds = %20, %22
  ret void
}

declare dso_local i32 @strncpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
