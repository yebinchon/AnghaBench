; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_slip_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_slip_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.tty_struct = type { i32, %struct.slip*, %struct.TYPE_4__* }
%struct.slip = type { i64, i32, i32, i32, %struct.tty_struct*, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { i32* }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@SLIP_MAGIC = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@SLF_INUSE = common dso_local global i32 0, align 4
@SL_MTU = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @slip_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slip_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.slip*, align 8
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
  br label %102

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %102

22:                                               ; preds = %12
  %23 = call i32 (...) @rtnl_lock()
  %24 = call i32 (...) @sl_sync()
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 1
  %27 = load %struct.slip*, %struct.slip** %26, align 8
  store %struct.slip* %27, %struct.slip** %4, align 8
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.slip*, %struct.slip** %4, align 8
  %31 = icmp ne %struct.slip* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.slip*, %struct.slip** %4, align 8
  %34 = getelementptr inbounds %struct.slip, %struct.slip* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SLIP_MAGIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %99

39:                                               ; preds = %32, %22
  %40 = load i32, i32* @ENFILE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  %42 = call %struct.slip* (...) @sl_alloc()
  store %struct.slip* %42, %struct.slip** %4, align 8
  %43 = load %struct.slip*, %struct.slip** %4, align 8
  %44 = icmp eq %struct.slip* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %99

46:                                               ; preds = %39
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = load %struct.slip*, %struct.slip** %4, align 8
  %49 = getelementptr inbounds %struct.slip, %struct.slip* %48, i32 0, i32 4
  store %struct.tty_struct* %47, %struct.tty_struct** %49, align 8
  %50 = load %struct.slip*, %struct.slip** %4, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 1
  store %struct.slip* %50, %struct.slip** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.slip*, %struct.slip** %4, align 8
  %57 = getelementptr inbounds %struct.slip, %struct.slip* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @SLF_INUSE, align 4
  %59 = load %struct.slip*, %struct.slip** %4, align 8
  %60 = getelementptr inbounds %struct.slip, %struct.slip* %59, i32 0, i32 3
  %61 = call i32 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %46
  %64 = load %struct.slip*, %struct.slip** %4, align 8
  %65 = load i32, i32* @SL_MTU, align 4
  %66 = call i32 @sl_alloc_bufs(%struct.slip* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %90

70:                                               ; preds = %63
  %71 = load i32, i32* @SLF_INUSE, align 4
  %72 = load %struct.slip*, %struct.slip** %4, align 8
  %73 = getelementptr inbounds %struct.slip, %struct.slip* %72, i32 0, i32 3
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  %75 = load %struct.slip*, %struct.slip** %4, align 8
  %76 = getelementptr inbounds %struct.slip, %struct.slip* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @register_netdevice(i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %87

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %46
  %84 = call i32 (...) @rtnl_unlock()
  %85 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %86 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %85, i32 0, i32 0
  store i32 65536, i32* %86, align 8
  store i32 0, i32* %2, align 4
  br label %102

87:                                               ; preds = %81
  %88 = load %struct.slip*, %struct.slip** %4, align 8
  %89 = call i32 @sl_free_bufs(%struct.slip* %88)
  br label %90

90:                                               ; preds = %87, %69
  %91 = load %struct.slip*, %struct.slip** %4, align 8
  %92 = getelementptr inbounds %struct.slip, %struct.slip* %91, i32 0, i32 4
  store %struct.tty_struct* null, %struct.tty_struct** %92, align 8
  %93 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %94 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %93, i32 0, i32 1
  store %struct.slip* null, %struct.slip** %94, align 8
  %95 = load i32, i32* @SLF_INUSE, align 4
  %96 = load %struct.slip*, %struct.slip** %4, align 8
  %97 = getelementptr inbounds %struct.slip, %struct.slip* %96, i32 0, i32 3
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %90, %45, %38
  %100 = call i32 (...) @rtnl_unlock()
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %99, %83, %19, %9
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @sl_sync(...) #1

declare dso_local %struct.slip* @sl_alloc(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @sl_alloc_bufs(%struct.slip*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @register_netdevice(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @sl_free_bufs(%struct.slip*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
