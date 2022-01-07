; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_fini_special_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_fini_special_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }
%struct.ef4_special_buffer = type { i32, i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unmapping special buffers %d-%d\0A\00", align 1
@FRF_AZ_BUF_UPD_CMD = common dso_local global i32 0, align 4
@FRF_AZ_BUF_CLR_CMD = common dso_local global i32 0, align 4
@FRF_AZ_BUF_CLR_END_ID = common dso_local global i32 0, align 4
@FRF_AZ_BUF_CLR_START_ID = common dso_local global i32 0, align 4
@FR_AZ_BUF_TBL_UPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*, %struct.ef4_special_buffer*)* @ef4_fini_special_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_fini_special_buffer(%struct.ef4_nic* %0, %struct.ef4_special_buffer* %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.ef4_special_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store %struct.ef4_special_buffer* %1, %struct.ef4_special_buffer** %4, align 8
  %8 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %13, %16
  %18 = sub i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %26 = load i32, i32* @hw, align 4
  %27 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %28 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %35, %38
  %40 = sub i32 %39, 1
  %41 = call i32 @netif_dbg(%struct.ef4_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @FRF_AZ_BUF_UPD_CMD, align 4
  %44 = load i32, i32* @FRF_AZ_BUF_CLR_CMD, align 4
  %45 = load i32, i32* @FRF_AZ_BUF_CLR_END_ID, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FRF_AZ_BUF_CLR_START_ID, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @EF4_POPULATE_OWORD_4(i32 %42, i32 %43, i32 0, i32 %44, i32 1, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %51 = load i32, i32* @FR_AZ_BUF_TBL_UPD, align 4
  %52 = call i32 @ef4_writeo(%struct.ef4_nic* %50, i32* %5, i32 %51)
  br label %53

53:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
