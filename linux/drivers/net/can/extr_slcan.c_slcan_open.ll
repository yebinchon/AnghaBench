; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slcan_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slcan_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.slcan*, %struct.TYPE_2__* }
%struct.slcan = type { i64, i32, %struct.tty_struct*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32* }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@SLCAN_MAGIC = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i32 0, align 4
@SLF_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @slcan_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slcan_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.slcan*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %6 = load i32, i32* @CAP_NET_ADMIN, align 4
  %7 = call i32 @capable(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EPERM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %91

22:                                               ; preds = %12
  %23 = call i32 (...) @rtnl_lock()
  %24 = call i32 (...) @slc_sync()
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 1
  %27 = load %struct.slcan*, %struct.slcan** %26, align 8
  store %struct.slcan* %27, %struct.slcan** %4, align 8
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.slcan*, %struct.slcan** %4, align 8
  %31 = icmp ne %struct.slcan* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.slcan*, %struct.slcan** %4, align 8
  %34 = getelementptr inbounds %struct.slcan, %struct.slcan* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SLCAN_MAGIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %88

39:                                               ; preds = %32, %22
  %40 = load i32, i32* @ENFILE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  %42 = call %struct.slcan* (...) @slc_alloc()
  store %struct.slcan* %42, %struct.slcan** %4, align 8
  %43 = load %struct.slcan*, %struct.slcan** %4, align 8
  %44 = icmp eq %struct.slcan* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %88

46:                                               ; preds = %39
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = load %struct.slcan*, %struct.slcan** %4, align 8
  %49 = getelementptr inbounds %struct.slcan, %struct.slcan* %48, i32 0, i32 2
  store %struct.tty_struct* %47, %struct.tty_struct** %49, align 8
  %50 = load %struct.slcan*, %struct.slcan** %4, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 1
  store %struct.slcan* %50, %struct.slcan** %52, align 8
  %53 = load i32, i32* @SLF_INUSE, align 4
  %54 = load %struct.slcan*, %struct.slcan** %4, align 8
  %55 = getelementptr inbounds %struct.slcan, %struct.slcan* %54, i32 0, i32 1
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %46
  %59 = load %struct.slcan*, %struct.slcan** %4, align 8
  %60 = getelementptr inbounds %struct.slcan, %struct.slcan* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.slcan*, %struct.slcan** %4, align 8
  %62 = getelementptr inbounds %struct.slcan, %struct.slcan* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @SLF_INUSE, align 4
  %64 = load %struct.slcan*, %struct.slcan** %4, align 8
  %65 = getelementptr inbounds %struct.slcan, %struct.slcan* %64, i32 0, i32 1
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  %67 = load %struct.slcan*, %struct.slcan** %4, align 8
  %68 = getelementptr inbounds %struct.slcan, %struct.slcan* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @register_netdevice(i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  br label %79

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %46
  %76 = call i32 (...) @rtnl_unlock()
  %77 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %78 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %77, i32 0, i32 0
  store i32 65536, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %91

79:                                               ; preds = %73
  %80 = load %struct.slcan*, %struct.slcan** %4, align 8
  %81 = getelementptr inbounds %struct.slcan, %struct.slcan* %80, i32 0, i32 2
  store %struct.tty_struct* null, %struct.tty_struct** %81, align 8
  %82 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %83 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %82, i32 0, i32 1
  store %struct.slcan* null, %struct.slcan** %83, align 8
  %84 = load i32, i32* @SLF_INUSE, align 4
  %85 = load %struct.slcan*, %struct.slcan** %4, align 8
  %86 = getelementptr inbounds %struct.slcan, %struct.slcan* %85, i32 0, i32 1
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %79, %45, %38
  %89 = call i32 (...) @rtnl_unlock()
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %75, %19, %9
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @slc_sync(...) #1

declare dso_local %struct.slcan* @slc_alloc(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @register_netdevice(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
