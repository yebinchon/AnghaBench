; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_restore_spec_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_restore_spec_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mailbox_mod = type { i64, i32, i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@outer_esp_spi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_fte*, %struct.mailbox_mod*)* @restore_spec_mailbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_spec_mailbox(%struct.fs_fte* %0, %struct.mailbox_mod* %1) #0 {
  %3 = alloca %struct.fs_fte*, align 8
  %4 = alloca %struct.mailbox_mod*, align 8
  %5 = alloca i8*, align 8
  store %struct.fs_fte* %0, %struct.fs_fte** %3, align 8
  store %struct.mailbox_mod* %1, %struct.mailbox_mod** %4, align 8
  %6 = load i32, i32* @fte_match_param, align 4
  %7 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %8 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @misc_parameters, align 4
  %11 = call i8* @MLX5_ADDR_OF(i32 %6, i32 %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @fte_match_set_misc, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @outer_esp_spi, align 4
  %15 = load %struct.mailbox_mod*, %struct.mailbox_mod** %4, align 8
  %16 = getelementptr inbounds %struct.mailbox_mod, %struct.mailbox_mod* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MLX5_SET(i32 %12, i8* %13, i32 %14, i32 %17)
  %19 = load %struct.mailbox_mod*, %struct.mailbox_mod** %4, align 8
  %20 = getelementptr inbounds %struct.mailbox_mod, %struct.mailbox_mod* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %23 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 8
  %27 = load %struct.mailbox_mod*, %struct.mailbox_mod** %4, align 8
  %28 = getelementptr inbounds %struct.mailbox_mod, %struct.mailbox_mod* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %31 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
