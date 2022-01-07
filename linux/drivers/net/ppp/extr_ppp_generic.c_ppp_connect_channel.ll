; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_connect_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_connect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, %struct.ppp*, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.ppp = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ppp_net = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel*, i32)* @ppp_connect_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_connect_channel(%struct.channel* %0, i32 %1) #0 {
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ppp*, align 8
  %6 = alloca %struct.ppp_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.channel*, %struct.channel** %3, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ppp_net* @ppp_pernet(i32 %13)
  store %struct.ppp_net* %14, %struct.ppp_net** %6, align 8
  %15 = load %struct.ppp_net*, %struct.ppp_net** %6, align 8
  %16 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ppp_net*, %struct.ppp_net** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.ppp* @ppp_find_unit(%struct.ppp_net* %18, i32 %19)
  store %struct.ppp* %20, %struct.ppp** %5, align 8
  %21 = load %struct.ppp*, %struct.ppp** %5, align 8
  %22 = icmp ne %struct.ppp* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %117

24:                                               ; preds = %2
  %25 = load %struct.channel*, %struct.channel** %3, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 0
  %27 = call i32 @write_lock_bh(i32* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.channel*, %struct.channel** %3, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 1
  %32 = load %struct.ppp*, %struct.ppp** %31, align 8
  %33 = icmp ne %struct.ppp* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %113

35:                                               ; preds = %24
  %36 = load %struct.ppp*, %struct.ppp** %5, align 8
  %37 = call i32 @ppp_lock(%struct.ppp* %36)
  %38 = load %struct.channel*, %struct.channel** %3, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 4
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.channel*, %struct.channel** %3, align 8
  %42 = getelementptr inbounds %struct.channel, %struct.channel* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %35
  %46 = load %struct.channel*, %struct.channel** %3, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 4
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load %struct.ppp*, %struct.ppp** %5, align 8
  %50 = call i32 @ppp_unlock(%struct.ppp* %49)
  %51 = load i32, i32* @ENOTCONN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %113

53:                                               ; preds = %35
  %54 = load %struct.channel*, %struct.channel** %3, align 8
  %55 = getelementptr inbounds %struct.channel, %struct.channel* %54, i32 0, i32 4
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load %struct.channel*, %struct.channel** %3, align 8
  %58 = getelementptr inbounds %struct.channel, %struct.channel* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ppp*, %struct.ppp** %5, align 8
  %62 = getelementptr inbounds %struct.ppp, %struct.ppp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %60, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = load %struct.channel*, %struct.channel** %3, align 8
  %68 = getelementptr inbounds %struct.channel, %struct.channel* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ppp*, %struct.ppp** %5, align 8
  %72 = getelementptr inbounds %struct.ppp, %struct.ppp* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %66, %53
  %75 = load %struct.channel*, %struct.channel** %3, align 8
  %76 = getelementptr inbounds %struct.channel, %struct.channel* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 2
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.ppp*, %struct.ppp** %5, align 8
  %83 = getelementptr inbounds %struct.ppp, %struct.ppp* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %81, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %74
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.ppp*, %struct.ppp** %5, align 8
  %91 = getelementptr inbounds %struct.ppp, %struct.ppp* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %74
  %95 = load %struct.channel*, %struct.channel** %3, align 8
  %96 = getelementptr inbounds %struct.channel, %struct.channel* %95, i32 0, i32 2
  %97 = load %struct.ppp*, %struct.ppp** %5, align 8
  %98 = getelementptr inbounds %struct.ppp, %struct.ppp* %97, i32 0, i32 2
  %99 = call i32 @list_add_tail(i32* %96, i32* %98)
  %100 = load %struct.ppp*, %struct.ppp** %5, align 8
  %101 = getelementptr inbounds %struct.ppp, %struct.ppp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.ppp*, %struct.ppp** %5, align 8
  %105 = load %struct.channel*, %struct.channel** %3, align 8
  %106 = getelementptr inbounds %struct.channel, %struct.channel* %105, i32 0, i32 1
  store %struct.ppp* %104, %struct.ppp** %106, align 8
  %107 = load %struct.ppp*, %struct.ppp** %5, align 8
  %108 = getelementptr inbounds %struct.ppp, %struct.ppp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = call i32 @refcount_inc(i32* %109)
  %111 = load %struct.ppp*, %struct.ppp** %5, align 8
  %112 = call i32 @ppp_unlock(%struct.ppp* %111)
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %94, %45, %34
  %114 = load %struct.channel*, %struct.channel** %3, align 8
  %115 = getelementptr inbounds %struct.channel, %struct.channel* %114, i32 0, i32 0
  %116 = call i32 @write_unlock_bh(i32* %115)
  br label %117

117:                                              ; preds = %113, %23
  %118 = load %struct.ppp_net*, %struct.ppp_net** %6, align 8
  %119 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local %struct.ppp_net* @ppp_pernet(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ppp* @ppp_find_unit(%struct.ppp_net*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @ppp_lock(%struct.ppp*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ppp_unlock(%struct.ppp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
