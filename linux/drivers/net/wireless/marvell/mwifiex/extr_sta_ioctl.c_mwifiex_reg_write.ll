; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ds_reg_rw = type { i8*, i8*, i8* }

@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_reg_write(%struct.mwifiex_private* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mwifiex_ds_reg_rw, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, %struct.mwifiex_ds_reg_rw* %9, i32 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, %struct.mwifiex_ds_reg_rw* %9, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, %struct.mwifiex_ds_reg_rw* %9, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %17 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %18 = call i32 @mwifiex_reg_mem_ioctl_reg_rw(%struct.mwifiex_private* %16, %struct.mwifiex_ds_reg_rw* %9, i32 %17)
  ret i32 %18
}

declare dso_local i32 @mwifiex_reg_mem_ioctl_reg_rw(%struct.mwifiex_private*, %struct.mwifiex_ds_reg_rw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
