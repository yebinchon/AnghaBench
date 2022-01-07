; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_setup_ch_structures.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_setup_ch_structures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.xpc_partition*)* }
%struct.xpc_partition = type { i32, %struct.xpc_channel*, i32*, %struct.xpc_channel*, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.xpc_channel = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@XPC_MAX_NCHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't get memory for channels\0A\00", align 1
@xpNoMemory = common dso_local global i32 0, align 4
@XPC_OPENCLOSE_ARGS_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"can't get memory for remote connect args\0A\00", align 1
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@xpSuccess = common dso_local global i32 0, align 4
@XPC_P_SS_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_setup_ch_structures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_setup_ch_structures(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xpc_channel*, align 8
  %7 = alloca i16, align 2
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %8 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %9 = call signext i16 @XPC_PARTID(%struct.xpc_partition* %8)
  store i16 %9, i16* %7, align 2
  %10 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %11 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %10, i32 0, i32 1
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %11, align 8
  %13 = icmp ne %struct.xpc_channel* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @DBUG_ON(i32 %14)
  %16 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.xpc_channel* @kcalloc(i32 %16, i32 52, i32 %17)
  %19 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %20 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %19, i32 0, i32 1
  store %struct.xpc_channel* %18, %struct.xpc_channel** %20, align 8
  %21 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %22 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %21, i32 0, i32 1
  %23 = load %struct.xpc_channel*, %struct.xpc_channel** %22, align 8
  %24 = icmp eq %struct.xpc_channel* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @xpc_chan, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @xpNoMemory, align 4
  store i32 %28, i32* %2, align 4
  br label %150

29:                                               ; preds = %1
  %30 = load i32, i32* @XPC_OPENCLOSE_ARGS_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %33 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %32, i32 0, i32 3
  %34 = call i32* @xpc_kzalloc_cacheline_aligned(i32 %30, i32 %31, %struct.xpc_channel** %33)
  %35 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %36 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %38 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* @xpc_chan, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @xpNoMemory, align 4
  store i32 %44, i32* %4, align 4
  br label %142

45:                                               ; preds = %29
  %46 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %47 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %46, i32 0, i32 10
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %50 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %49, i32 0, i32 9
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %53 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %52, i32 0, i32 8
  %54 = call i32 @atomic_set(i32* %53, i32 1)
  %55 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %56 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %55, i32 0, i32 7
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %59 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %60 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %62 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %61, i32 0, i32 6
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  %64 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %65 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %64, i32 0, i32 5
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %119, %45
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %70 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %67
  %74 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %75 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %74, i32 0, i32 1
  %76 = load %struct.xpc_channel*, %struct.xpc_channel** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %76, i64 %78
  store %struct.xpc_channel* %79, %struct.xpc_channel** %6, align 8
  %80 = load i16, i16* %7, align 2
  %81 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %82 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %81, i32 0, i32 0
  store i16 %80, i16* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %85 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %87 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %88 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %87, i32 0, i32 12
  store i32 %86, i32* %88, align 4
  %89 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %90 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %89, i32 0, i32 11
  %91 = call i32 @atomic_set(i32* %90, i32 0)
  %92 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %93 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %92, i32 0, i32 10
  %94 = call i32 @atomic_set(i32* %93, i32 0)
  %95 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %96 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %95, i32 0, i32 9
  %97 = call i32 @atomic_set(i32* %96, i32 0)
  %98 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %99 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %98, i32 0, i32 8
  %100 = call i32 @atomic_set(i32* %99, i32 0)
  %101 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %102 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %101, i32 0, i32 7
  %103 = call i32 @atomic_set(i32* %102, i32 0)
  %104 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %105 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %104, i32 0, i32 6
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %108 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %107, i32 0, i32 5
  %109 = call i32 @init_completion(i32* %108)
  %110 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %111 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %110, i32 0, i32 4
  %112 = call i32 @atomic_set(i32* %111, i32 0)
  %113 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %114 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %113, i32 0, i32 3
  %115 = call i32 @init_waitqueue_head(i32* %114)
  %116 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %117 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %116, i32 0, i32 2
  %118 = call i32 @init_waitqueue_head(i32* %117)
  br label %119

119:                                              ; preds = %73
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %67

122:                                              ; preds = %67
  %123 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 0), align 8
  %124 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %125 = call i32 %123(%struct.xpc_partition* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @xpSuccess, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %135

130:                                              ; preds = %122
  %131 = load i32, i32* @XPC_P_SS_SETUP, align 4
  %132 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %133 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @xpSuccess, align 4
  store i32 %134, i32* %2, align 4
  br label %150

135:                                              ; preds = %129
  %136 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %137 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %136, i32 0, i32 3
  %138 = load %struct.xpc_channel*, %struct.xpc_channel** %137, align 8
  %139 = call i32 @kfree(%struct.xpc_channel* %138)
  %140 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %141 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %140, i32 0, i32 2
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %135, %41
  %143 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %144 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %143, i32 0, i32 1
  %145 = load %struct.xpc_channel*, %struct.xpc_channel** %144, align 8
  %146 = call i32 @kfree(%struct.xpc_channel* %145)
  %147 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %148 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %147, i32 0, i32 1
  store %struct.xpc_channel* null, %struct.xpc_channel** %148, align 8
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %142, %130, %25
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local signext i16 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local %struct.xpc_channel* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32* @xpc_kzalloc_cacheline_aligned(i32, i32, %struct.xpc_channel**) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kfree(%struct.xpc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
