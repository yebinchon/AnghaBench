; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_release_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_release_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_slot = type { i32*, i32*, %struct.mmc_omap_host* }
%struct.mmc_omap_host = type { i32, i32, i32, i32*, i32, i32, %struct.mmc_omap_slot*, %struct.mmc_omap_slot*, %struct.mmc_omap_slot**, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_slot*, i32)* @mmc_omap_release_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_release_slot(%struct.mmc_omap_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_omap_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_omap_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_omap_slot*, align 8
  store %struct.mmc_omap_slot* %0, %struct.mmc_omap_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %9, i32 0, i32 2
  %11 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %10, align 8
  store %struct.mmc_omap_host* %11, %struct.mmc_omap_host** %5, align 8
  %12 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %13 = icmp eq %struct.mmc_omap_slot* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i1 [ true, %2 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %27 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %26, i32 0, i32 9
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %29, 10
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @mod_timer(i32* %27, i64 %32)
  br label %42

34:                                               ; preds = %19
  %35 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %35, i32 0, i32 9
  %37 = call i32 @del_timer(i32* %36)
  %38 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %39 = call i32 @mmc_omap_fclk_offdelay(%struct.mmc_omap_slot* %38)
  %40 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %41 = call i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host* %40, i32 0)
  br label %42

42:                                               ; preds = %34, %25
  %43 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %43, i32 0, i32 1
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %113, %42
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %50 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %116

53:                                               ; preds = %47
  %54 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %55 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %54, i32 0, i32 8
  %56 = load %struct.mmc_omap_slot**, %struct.mmc_omap_slot*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %56, i64 %58
  %60 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %59, align 8
  %61 = icmp eq %struct.mmc_omap_slot* %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %53
  %63 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %64 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %63, i32 0, i32 8
  %65 = load %struct.mmc_omap_slot**, %struct.mmc_omap_slot*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %65, i64 %67
  %69 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %68, align 8
  %70 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %62, %53
  br label %113

74:                                               ; preds = %62
  %75 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %76 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %75, i32 0, i32 6
  %77 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %76, align 8
  %78 = icmp ne %struct.mmc_omap_slot* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %82 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %81, i32 0, i32 8
  %83 = load %struct.mmc_omap_slot**, %struct.mmc_omap_slot*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %83, i64 %85
  %87 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %86, align 8
  store %struct.mmc_omap_slot* %87, %struct.mmc_omap_slot** %8, align 8
  %88 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %8, align 8
  %89 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %90 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %89, i32 0, i32 7
  %91 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %90, align 8
  %92 = icmp eq %struct.mmc_omap_slot* %88, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %8, align 8
  %96 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %97 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %96, i32 0, i32 6
  store %struct.mmc_omap_slot* %95, %struct.mmc_omap_slot** %97, align 8
  %98 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %8, align 8
  %99 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %102 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %101, i32 0, i32 3
  store i32* %100, i32** %102, align 8
  %103 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %104 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %103, i32 0, i32 1
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %108 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %111 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %110, i32 0, i32 4
  %112 = call i32 @queue_work(i32 %109, i32* %111)
  br label %126

113:                                              ; preds = %73
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %47

116:                                              ; preds = %47
  %117 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %118 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %117, i32 0, i32 3
  store i32* null, i32** %118, align 8
  %119 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %120 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %119, i32 0, i32 2
  %121 = call i32 @wake_up(i32* %120)
  %122 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %123 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %122, i32 0, i32 1
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  br label %126

126:                                              ; preds = %116, %74
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mmc_omap_fclk_offdelay(%struct.mmc_omap_slot*) #1

declare dso_local i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
