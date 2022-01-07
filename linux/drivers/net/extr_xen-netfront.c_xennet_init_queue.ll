; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32, i32, i32, i8**, i32**, i32**, i8**, i32*, i64, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@rx_refill_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"vif%s-q%u\00", align 1
@NET_TX_RING_SIZE = common dso_local global i16 0, align 2
@GRANT_INVALID_REF = common dso_local global i8* null, align 8
@NET_RX_RING_SIZE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [27 x i8] c"can't alloc tx grant refs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"can't alloc rx grant refs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_queue*)* @xennet_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_init_queue(%struct.netfront_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netfront_queue*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %8 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %7, i32 0, i32 13
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %11 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %10, i32 0, i32 12
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %14 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %13, i32 0, i32 11
  %15 = load i32, i32* @rx_refill_timeout, align 4
  %16 = call i32 @timer_setup(i32* %14, i32 %15, i32 0)
  %17 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %18 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %17, i32 0, i32 10
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @strrchr(i32 %23, i8 signext 47)
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %6, align 8
  %26 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %27 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %31 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %32)
  %34 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %35 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  store i16 0, i16* %4, align 2
  br label %36

36:                                               ; preds = %67, %1
  %37 = load i16, i16* %4, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @NET_TX_RING_SIZE, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %44 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  %46 = load i16, i16* %4, align 2
  %47 = zext i16 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i16, i16* %4, align 2
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 %50, 1
  %52 = trunc i32 %51 to i16
  %53 = call i32 @skb_entry_set_link(i32* %48, i16 zeroext %52)
  %54 = load i8*, i8** @GRANT_INVALID_REF, align 8
  %55 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %56 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %55, i32 0, i32 6
  %57 = load i8**, i8*** %56, align 8
  %58 = load i16, i16* %4, align 2
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %54, i8** %60, align 8
  %61 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %62 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %61, i32 0, i32 5
  %63 = load i32**, i32*** %62, align 8
  %64 = load i16, i16* %4, align 2
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %42
  %68 = load i16, i16* %4, align 2
  %69 = add i16 %68, 1
  store i16 %69, i16* %4, align 2
  br label %36

70:                                               ; preds = %36
  store i16 0, i16* %4, align 2
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i16, i16* %4, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* @NET_RX_RING_SIZE, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  %78 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %79 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %78, i32 0, i32 4
  %80 = load i32**, i32*** %79, align 8
  %81 = load i16, i16* %4, align 2
  %82 = zext i16 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32* null, i32** %83, align 8
  %84 = load i8*, i8** @GRANT_INVALID_REF, align 8
  %85 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %86 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %85, i32 0, i32 3
  %87 = load i8**, i8*** %86, align 8
  %88 = load i16, i16* %4, align 2
  %89 = zext i16 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %84, i8** %90, align 8
  br label %91

91:                                               ; preds = %77
  %92 = load i16, i16* %4, align 2
  %93 = add i16 %92, 1
  store i16 %93, i16* %4, align 2
  br label %71

94:                                               ; preds = %71
  %95 = load i16, i16* @NET_TX_RING_SIZE, align 2
  %96 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %97 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %96, i32 0, i32 1
  %98 = call i64 @gnttab_alloc_grant_references(i16 zeroext %95, i32* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = call i32 @pr_alert(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %120

104:                                              ; preds = %94
  %105 = load i16, i16* @NET_RX_RING_SIZE, align 2
  %106 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %107 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %106, i32 0, i32 2
  %108 = call i64 @gnttab_alloc_grant_references(i16 zeroext %105, i32* %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = call i32 @pr_alert(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %115

114:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %122

115:                                              ; preds = %110
  %116 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %117 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @gnttab_free_grant_references(i32 %118)
  br label %120

120:                                              ; preds = %115, %100
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %114
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @skb_entry_set_link(i32*, i16 zeroext) #1

declare dso_local i64 @gnttab_alloc_grant_references(i16 zeroext, i32*) #1

declare dso_local i32 @pr_alert(i8*) #1

declare dso_local i32 @gnttab_free_grant_references(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
