; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_misc_ioctl_gen_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_misc_ioctl_gen_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32, i32 }
%struct.mwifiex_ds_misc_gen_ie = type { i32, i32, i32 }

@HostCmd_ACT_GEN_GET = common dso_local global i32 0, align 4
@ARP_FILTER_MAX_BUF_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid ARP filter size\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid IE type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_ds_misc_gen_ie*, i32)* @mwifiex_misc_ioctl_gen_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_misc_ioctl_gen_ie(%struct.mwifiex_private* %0, %struct.mwifiex_ds_misc_gen_ie* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_ds_misc_gen_ie*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_ds_misc_gen_ie* %1, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 2
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  store %struct.mwifiex_adapter* %11, %struct.mwifiex_adapter** %8, align 8
  %12 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %13 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %78 [
    i32 128, label %15
    i32 129, label %45
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @HostCmd_ACT_GEN_GET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %21 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %24 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %32 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %27, i32 %30, i32 %33)
  br label %44

35:                                               ; preds = %15
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %37 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %38 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %41 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mwifiex_set_gen_ie_helper(%struct.mwifiex_private* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %19
  br label %82

45:                                               ; preds = %3
  %46 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %47 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  %50 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %51 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ARP_FILTER_MAX_BUF_SIZE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %57 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %59 = load i32, i32* @ERROR, align 4
  %60 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %58, i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

61:                                               ; preds = %45
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %66 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %69 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32 %64, i32 %67, i32 %70)
  %72 = load %struct.mwifiex_ds_misc_gen_ie*, %struct.mwifiex_ds_misc_gen_ie** %6, align 8
  %73 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, %struct.mwifiex_ds_misc_gen_ie* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %76 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %61
  br label %82

78:                                               ; preds = %3
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %80 = load i32, i32* @ERROR, align 4
  %81 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %79, i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

82:                                               ; preds = %77, %44
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %78, %55
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mwifiex_set_gen_ie_helper(%struct.mwifiex_private*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
