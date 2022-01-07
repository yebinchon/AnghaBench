; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_establish_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_establish_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32 }
%struct.rc_map = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rc_map*, i32, i32)* @ir_establish_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_establish_scancode(%struct.rc_dev* %0, %struct.rc_map* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.rc_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  store %struct.rc_map* %1, %struct.rc_map** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %25 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %22
  %29 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %30 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %127

41:                                               ; preds = %28
  %42 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %43 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %57

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %22

57:                                               ; preds = %52, %22
  %58 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %59 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %62 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %70 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i64 @ir_resize_table(%struct.rc_dev* %69, %struct.rc_map* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %65
  store i32 -1, i32* %5, align 4
  br label %127

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %79 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %84 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %88
  %90 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %91 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %97 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sub i32 %98, %99
  %101 = zext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memmove(%struct.TYPE_3__* %89, %struct.TYPE_3__* %95, i32 %103)
  br label %105

105:                                              ; preds = %82, %76
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %108 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  %114 = load i32, i32* @KEY_RESERVED, align 4
  %115 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %116 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %115, i32 0, i32 2
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32 %114, i32* %121, align 4
  %122 = load %struct.rc_map*, %struct.rc_map** %7, align 8
  %123 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %105, %74, %39
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @ir_resize_table(%struct.rc_dev*, %struct.rc_map*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
