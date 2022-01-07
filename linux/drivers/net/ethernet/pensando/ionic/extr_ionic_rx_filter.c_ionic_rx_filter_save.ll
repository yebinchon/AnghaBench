; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_rx_filter.c_ionic_rx_filter_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_rx_filter.c_ionic_rx_filter_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.TYPE_16__, %struct.TYPE_9__* }
%struct.TYPE_16__ = type { i32, %struct.hlist_head*, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.TYPE_9__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ionic_admin_ctx = type { %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { %struct.ionic_rx_filter_add_cmd }
%struct.ionic_rx_filter_add_cmd = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.ionic_rx_filter = type { i32, i32, i32, i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IONIC_RX_FILTER_HASH_BITS = common dso_local global i32 0, align 4
@IONIC_RX_FILTER_HLISTS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_rx_filter_save(%struct.ionic_lif* %0, i8* %1, i32 %2, i8* %3, %struct.ionic_admin_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ionic_lif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ionic_admin_ctx*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.ionic_rx_filter_add_cmd*, align 8
  %14 = alloca %struct.ionic_rx_filter*, align 8
  %15 = alloca %struct.hlist_head*, align 8
  %16 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.ionic_admin_ctx* %4, %struct.ionic_admin_ctx** %11, align 8
  %17 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %18 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %12, align 8
  %22 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %11, align 8
  %23 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store %struct.ionic_rx_filter_add_cmd* %24, %struct.ionic_rx_filter_add_cmd** %13, align 8
  %25 = load %struct.ionic_rx_filter_add_cmd*, %struct.ionic_rx_filter_add_cmd** %13, align 8
  %26 = getelementptr inbounds %struct.ionic_rx_filter_add_cmd, %struct.ionic_rx_filter_add_cmd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  switch i32 %28, label %49 [
    i32 128, label %29
    i32 130, label %35
    i32 129, label %43
  ]

29:                                               ; preds = %5
  %30 = load %struct.ionic_rx_filter_add_cmd*, %struct.ionic_rx_filter_add_cmd** %13, align 8
  %31 = getelementptr inbounds %struct.ionic_rx_filter_add_cmd, %struct.ionic_rx_filter_add_cmd* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %16, align 4
  br label %52

35:                                               ; preds = %5
  %36 = load %struct.ionic_rx_filter_add_cmd*, %struct.ionic_rx_filter_add_cmd** %13, align 8
  %37 = getelementptr inbounds %struct.ionic_rx_filter_add_cmd, %struct.ionic_rx_filter_add_cmd* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %16, align 4
  br label %52

43:                                               ; preds = %5
  %44 = load %struct.ionic_rx_filter_add_cmd*, %struct.ionic_rx_filter_add_cmd** %13, align 8
  %45 = getelementptr inbounds %struct.ionic_rx_filter_add_cmd, %struct.ionic_rx_filter_add_cmd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %16, align 4
  br label %52

49:                                               ; preds = %5
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %124

52:                                               ; preds = %43, %35, %29
  %53 = load %struct.device*, %struct.device** %12, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.ionic_rx_filter* @devm_kzalloc(%struct.device* %53, i32 32, i32 %54)
  store %struct.ionic_rx_filter* %55, %struct.ionic_rx_filter** %14, align 8
  %56 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %57 = icmp ne %struct.ionic_rx_filter* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %124

61:                                               ; preds = %52
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %64 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %11, align 8
  %66 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %72 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %75 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %77 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %76, i32 0, i32 3
  %78 = load %struct.ionic_rx_filter_add_cmd*, %struct.ionic_rx_filter_add_cmd** %13, align 8
  %79 = call i32 @memcpy(i32* %77, %struct.ionic_rx_filter_add_cmd* %78, i32 4)
  %80 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %81 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %80, i32 0, i32 2
  %82 = call i32 @INIT_HLIST_NODE(i32* %81)
  %83 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %84 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %83, i32 0, i32 1
  %85 = call i32 @INIT_HLIST_NODE(i32* %84)
  %86 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %87 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = call i32 @spin_lock_bh(i32* %88)
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @IONIC_RX_FILTER_HASH_BITS, align 4
  %92 = call i32 @hash_32(i32 %90, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %94 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load %struct.hlist_head*, %struct.hlist_head** %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %96, i64 %98
  store %struct.hlist_head* %99, %struct.hlist_head** %15, align 8
  %100 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %101 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %100, i32 0, i32 2
  %102 = load %struct.hlist_head*, %struct.hlist_head** %15, align 8
  %103 = call i32 @hlist_add_head(i32* %101, %struct.hlist_head* %102)
  %104 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %105 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IONIC_RX_FILTER_HLISTS_MASK, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %16, align 4
  %109 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %110 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load %struct.hlist_head*, %struct.hlist_head** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %112, i64 %114
  store %struct.hlist_head* %115, %struct.hlist_head** %15, align 8
  %116 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %14, align 8
  %117 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %116, i32 0, i32 1
  %118 = load %struct.hlist_head*, %struct.hlist_head** %15, align 8
  %119 = call i32 @hlist_add_head(i32* %117, %struct.hlist_head* %118)
  %120 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %121 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock_bh(i32* %122)
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %61, %58, %49
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ionic_rx_filter* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ionic_rx_filter_add_cmd*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hash_32(i32, i32) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
