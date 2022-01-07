; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_unit_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_unit_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ppp_net = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ppp%i\00", align 1
@ppp_unit_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppp*, i32, i32)* @ppp_unit_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_unit_register(%struct.ppp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ppp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ppp_net*, align 8
  %9 = alloca i32, align 4
  store %struct.ppp* %0, %struct.ppp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ppp*, %struct.ppp** %5, align 8
  %11 = getelementptr inbounds %struct.ppp, %struct.ppp* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.ppp_net* @ppp_pernet(i32 %12)
  store %struct.ppp_net* %13, %struct.ppp_net** %8, align 8
  %14 = load %struct.ppp_net*, %struct.ppp_net** %8, align 8
  %15 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.ppp_net*, %struct.ppp_net** %8, align 8
  %21 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %20, i32 0, i32 1
  %22 = load %struct.ppp*, %struct.ppp** %5, align 8
  %23 = call i32 @unit_get(i32* %21, %struct.ppp* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %92

27:                                               ; preds = %19
  br label %49

28:                                               ; preds = %3
  %29 = load %struct.ppp_net*, %struct.ppp_net** %8, align 8
  %30 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %29, i32 0, i32 1
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @unit_find(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EEXIST, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %92

37:                                               ; preds = %28
  %38 = load %struct.ppp_net*, %struct.ppp_net** %8, align 8
  %39 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %38, i32 0, i32 1
  %40 = load %struct.ppp*, %struct.ppp** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @unit_set(i32* %39, %struct.ppp* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EEXIST, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %92

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ppp*, %struct.ppp** %5, align 8
  %52 = getelementptr inbounds %struct.ppp, %struct.ppp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %49
  %57 = load %struct.ppp*, %struct.ppp** %5, align 8
  %58 = getelementptr inbounds %struct.ppp, %struct.ppp* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFNAMSIZ, align 4
  %63 = load %struct.ppp*, %struct.ppp** %5, align 8
  %64 = getelementptr inbounds %struct.ppp, %struct.ppp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @snprintf(i32 %61, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %56, %49
  %69 = load %struct.ppp_net*, %struct.ppp_net** %8, align 8
  %70 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.ppp*, %struct.ppp** %5, align 8
  %73 = getelementptr inbounds %struct.ppp, %struct.ppp* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @register_netdevice(%struct.TYPE_4__* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %81

79:                                               ; preds = %68
  %80 = call i32 @atomic_inc(i32* @ppp_unit_count)
  store i32 0, i32* %4, align 4
  br label %97

81:                                               ; preds = %78
  %82 = load %struct.ppp_net*, %struct.ppp_net** %8, align 8
  %83 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %82, i32 0, i32 0
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.ppp_net*, %struct.ppp_net** %8, align 8
  %86 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %85, i32 0, i32 1
  %87 = load %struct.ppp*, %struct.ppp** %5, align 8
  %88 = getelementptr inbounds %struct.ppp, %struct.ppp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @unit_put(i32* %86, i32 %90)
  br label %92

92:                                               ; preds = %81, %45, %34, %26
  %93 = load %struct.ppp_net*, %struct.ppp_net** %8, align 8
  %94 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %79
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.ppp_net* @ppp_pernet(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unit_get(i32*, %struct.ppp*) #1

declare dso_local i64 @unit_find(i32*, i32) #1

declare dso_local i32 @unit_set(i32*, %struct.ppp*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @register_netdevice(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @unit_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
