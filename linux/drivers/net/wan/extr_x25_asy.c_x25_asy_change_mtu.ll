; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.x25_asy = type { i8*, i32, i8*, i8*, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @x25_asy_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_asy_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.x25_asy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.x25_asy* @netdev_priv(%struct.net_device* %10)
  store %struct.x25_asy* %11, %struct.x25_asy** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 2, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i8* @kmalloc(i32 %15, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24, %2
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @kfree(i8* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %128

34:                                               ; preds = %24
  %35 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %36 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %35, i32 0, i32 6
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %39 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %38, i32 0, i32 0
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @xchg(i8** %39, i8* %40)
  store i8* %41, i8** %7, align 8
  %42 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %43 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %34
  %47 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %48 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %54 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %57 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %60 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i8* %55, i8* %58, i32 %61)
  br label %71

63:                                               ; preds = %46
  %64 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %65 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %63, %52
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %74 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %77 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %79 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %78, i32 0, i32 3
  %80 = load i8*, i8** %8, align 8
  %81 = call i8* @xchg(i8** %79, i8* %80)
  store i8* %81, i8** %8, align 8
  %82 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %83 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %72
  %87 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %88 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %94 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %98 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @memcpy(i8* %95, i8* %96, i32 %99)
  br label %113

101:                                              ; preds = %86
  %102 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %103 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %102, i32 0, i32 4
  store i32 0, i32* %103, align 8
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @SLF_ERROR, align 4
  %110 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %111 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %110, i32 0, i32 7
  %112 = call i32 @set_bit(i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %101, %92
  br label %114

114:                                              ; preds = %113, %72
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %120 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %122 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %121, i32 0, i32 6
  %123 = call i32 @spin_unlock_bh(i32* %122)
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @kfree(i8* %124)
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @kfree(i8* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %114, %27
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.x25_asy* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @xchg(i8**, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
