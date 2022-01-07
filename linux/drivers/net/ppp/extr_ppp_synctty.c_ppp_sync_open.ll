; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_synctty.c_ppp_sync_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_synctty.c_ppp_sync_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.syncppp*, %struct.TYPE_3__* }
%struct.syncppp = type { i32*, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i8*, %struct.tty_struct* }
%struct.TYPE_4__ = type { i32, i32, i8*, i32*, %struct.syncppp* }
%struct.TYPE_3__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PPP_MRU = common dso_local global i8* null, align 8
@ppp_sync_process = common dso_local global i32 0, align 4
@sync_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @ppp_sync_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_sync_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.syncppp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %99

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.syncppp* @kzalloc(i32 88, i32 %17)
  store %struct.syncppp* %18, %struct.syncppp** %4, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %22 = icmp ne %struct.syncppp* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %97

24:                                               ; preds = %16
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %27 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %26, i32 0, i32 10
  store %struct.tty_struct* %25, %struct.tty_struct** %27, align 8
  %28 = load i8*, i8** @PPP_MRU, align 8
  %29 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %30 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %32 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %31, i32 0, i32 8
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %35 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %34, i32 0, i32 7
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %38 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 -1, i32* %40, align 4
  %41 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %42 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 1610612736, i32* %44, align 4
  %45 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %46 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 8
  %47 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %48 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %47, i32 0, i32 6
  %49 = call i32 @skb_queue_head_init(i32* %48)
  %50 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %51 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %50, i32 0, i32 5
  %52 = load i32, i32* @ppp_sync_process, align 4
  %53 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %54 = ptrtoint %struct.syncppp* %53 to i64
  %55 = call i32 @tasklet_init(i32* %51, i32 %52, i64 %54)
  %56 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %57 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %56, i32 0, i32 4
  %58 = call i32 @refcount_set(i32* %57, i32 1)
  %59 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %60 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %59, i32 0, i32 3
  %61 = call i32 @init_completion(i32* %60)
  %62 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %63 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %64 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store %struct.syncppp* %62, %struct.syncppp** %65, align 8
  %66 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %67 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i32* @sync_ops, i32** %68, align 8
  %69 = load i8*, i8** @PPP_MRU, align 8
  %70 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %71 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i8* %69, i8** %72, align 8
  %73 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %74 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 2, i32* %75, align 8
  %76 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %77 = call i32 @tty_get_baud_rate(%struct.tty_struct* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %80 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %83 = getelementptr inbounds %struct.syncppp, %struct.syncppp* %82, i32 0, i32 2
  %84 = call i32 @ppp_register_channel(%struct.TYPE_4__* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %24
  br label %94

88:                                               ; preds = %24
  %89 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %90 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %91 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %90, i32 0, i32 1
  store %struct.syncppp* %89, %struct.syncppp** %91, align 8
  %92 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %93 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %92, i32 0, i32 0
  store i32 65536, i32* %93, align 8
  store i32 0, i32* %2, align 4
  br label %99

94:                                               ; preds = %87
  %95 = load %struct.syncppp*, %struct.syncppp** %4, align 8
  %96 = call i32 @kfree(%struct.syncppp* %95)
  br label %97

97:                                               ; preds = %94, %23
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %88, %13
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.syncppp* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @ppp_register_channel(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.syncppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
