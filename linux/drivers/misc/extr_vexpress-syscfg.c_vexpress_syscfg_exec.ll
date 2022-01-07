; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vexpress-syscfg.c_vexpress_syscfg_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vexpress-syscfg.c_vexpress_syscfg_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vexpress_syscfg_func = type { i32, i32*, %struct.vexpress_syscfg* }
%struct.vexpress_syscfg = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SYS_CFGCTRL = common dso_local global i64 0, align 8
@SYS_CFGCTRL_START = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SYS_CFGCTRL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"func %p, command %x, data %x\0A\00", align 1
@SYS_CFGDATA = common dso_local global i64 0, align 8
@SYS_CFGSTAT = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SYS_CFGSTAT_ERR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SYS_CFGSTAT_COMPLETE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"func %p, read data %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vexpress_syscfg_func*, i32, i32, i32*)* @vexpress_syscfg_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vexpress_syscfg_exec(%struct.vexpress_syscfg_func* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vexpress_syscfg_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vexpress_syscfg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.vexpress_syscfg_func* %0, %struct.vexpress_syscfg_func** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %6, align 8
  %16 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %15, i32 0, i32 2
  %17 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %16, align 8
  store %struct.vexpress_syscfg* %17, %struct.vexpress_syscfg** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %6, align 8
  %20 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %180

29:                                               ; preds = %4
  %30 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %10, align 8
  %31 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SYS_CFGCTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SYS_CFGCTRL_START, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %180

44:                                               ; preds = %29
  %45 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %6, align 8
  %46 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @SYS_CFGCTRL_START, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* @SYS_CFGCTRL_WRITE, align 4
  br label %60

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = load i32*, i32** %9, align 8
  store i32 -559038737, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %60
  %69 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %10, align 8
  %70 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, %struct.vexpress_syscfg_func*, i32, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.vexpress_syscfg_func* %72, i32 %73, i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %10, align 8
  %80 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SYS_CFGDATA, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %10, align 8
  %86 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SYS_CFGSTAT, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 0, i64 %89)
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %10, align 8
  %93 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SYS_CFGCTRL, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = call i32 (...) @mb()
  store i32 100, i32* %13, align 4
  store i64 100, i64* %14, align 8
  br label %99

99:                                               ; preds = %149, %68
  %100 = call i32 (...) @irqs_disabled()
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %104 = call i32 @set_current_state(i32 %103)
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @usecs_to_jiffies(i64 %105)
  %107 = call i32 @schedule_timeout(i32 %106)
  %108 = load i32, i32* @current, align 4
  %109 = call i64 @signal_pending(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* @EINTR, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %180

114:                                              ; preds = %102
  br label %118

115:                                              ; preds = %99
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @udelay(i64 %116)
  br label %118

118:                                              ; preds = %115, %114
  %119 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %10, align 8
  %120 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SYS_CFGSTAT, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @readl(i64 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @SYS_CFGSTAT_ERR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load i32, i32* @EFAULT, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %180

132:                                              ; preds = %118
  %133 = load i64, i64* %14, align 8
  %134 = icmp sgt i64 %133, 20
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i64, i64* %14, align 8
  %137 = sub nsw i64 %136, 20
  store i64 %137, i64* %14, align 8
  br label %138

138:                                              ; preds = %135, %132
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @SYS_CFGSTAT_COMPLETE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %143, %139
  %150 = phi i1 [ false, %139 ], [ %148, %143 ]
  br i1 %150, label %99, label %151

151:                                              ; preds = %149
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @WARN_ON_ONCE(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i32, i32* @ETIMEDOUT, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %180

161:                                              ; preds = %151
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %161
  %165 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %10, align 8
  %166 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SYS_CFGDATA, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @readl(i64 %169)
  %171 = load i32*, i32** %9, align 8
  store i32 %170, i32* %171, align 4
  %172 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %10, align 8
  %173 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %6, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, %struct.vexpress_syscfg_func*, i32, ...) @dev_dbg(i32 %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.vexpress_syscfg_func* %175, i32 %177)
  br label %179

179:                                              ; preds = %164, %161
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %158, %129, %111, %41, %26
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.vexpress_syscfg_func*, i32, ...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
