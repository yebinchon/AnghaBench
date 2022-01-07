; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_fw_dump_info_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_fw_dump_info_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64, i64, i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mwifiex_fw_dump_header = type { i64 }

@MWIFIEX_USB = common dso_local global i64 0, align 8
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"event is not on usb interface, ignore it\0A\00", align 1
@MWIFIEX_FW_DUMP_SIZE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"vzalloc devdump data failure!\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MWIFIEX_TIMER_10S = common dso_local global i32 0, align 4
@FW_DUMP_INFO_ENDED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"receive end of transmission flag event!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_fw_dump_info_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_fw_dump_info_event(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mwifiex_adapter*, align 8
  %6 = alloca %struct.mwifiex_fw_dump_header*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %7, i32 0, i32 0
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  store %struct.mwifiex_adapter* %9, %struct.mwifiex_adapter** %5, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.mwifiex_fw_dump_header*
  store %struct.mwifiex_fw_dump_header* %14, %struct.mwifiex_fw_dump_header** %6, align 8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MWIFIEX_USB, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %22 = load i32, i32* @MSG, align 4
  %23 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %21, i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %106

24:                                               ; preds = %2
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @MWIFIEX_FW_DUMP_SIZE, align 8
  %31 = call i64 @vzalloc(i64 %30)
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %39, i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %106

42:                                               ; preds = %29
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %44 = call i32 @mwifiex_drv_info_dump(%struct.mwifiex_adapter* %43)
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %45, i32 0, i32 3
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i32, i32* @MWIFIEX_TIMER_10S, align 4
  %49 = call i64 @msecs_to_jiffies(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @mod_timer(i32* %46, i64 %50)
  br label %52

52:                                               ; preds = %42, %24
  %53 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load i64, i64* @MWIFIEX_FW_DUMP_SIZE, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %100

63:                                               ; preds = %52
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %65 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memmove(i64 %70, i32 %75, i64 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %84 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.mwifiex_fw_dump_header*, %struct.mwifiex_fw_dump_header** %6, align 8
  %88 = getelementptr inbounds %struct.mwifiex_fw_dump_header, %struct.mwifiex_fw_dump_header* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FW_DUMP_INFO_ENDED, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @le16_to_cpu(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %63
  %96 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %97 = load i32, i32* @MSG, align 4
  %98 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %96, i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %100

99:                                               ; preds = %63
  br label %106

100:                                              ; preds = %95, %62
  %101 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %101, i32 0, i32 3
  %103 = call i32 @del_timer_sync(i32* %102)
  %104 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %105 = call i32 @mwifiex_upload_device_dump(%struct.mwifiex_adapter* %104)
  br label %106

106:                                              ; preds = %100, %99, %38, %20
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i64 @vzalloc(i64) #1

declare dso_local i32 @mwifiex_drv_info_dump(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @memmove(i64, i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mwifiex_upload_device_dump(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
