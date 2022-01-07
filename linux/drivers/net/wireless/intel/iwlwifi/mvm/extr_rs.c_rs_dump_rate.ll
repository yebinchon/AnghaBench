; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_dump_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_dump_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.rs_rate = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"%s: %s BW: %d SGI: %d LDPC: %d STBC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.rs_rate*, i8*)* @rs_dump_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_dump_rate(%struct.iwl_mvm* %0, %struct.rs_rate* %1, i8* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.rs_rate*, align 8
  %6 = alloca i8*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.rs_rate* %1, %struct.rs_rate** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %10 = call i32 @rs_pretty_rate(%struct.rs_rate* %9)
  %11 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %12 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %15 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %18 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %21 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rs_pretty_rate(%struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
