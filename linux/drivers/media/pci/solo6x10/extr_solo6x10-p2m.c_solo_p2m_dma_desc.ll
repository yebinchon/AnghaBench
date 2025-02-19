; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32, i32, %struct.solo_p2m_dev*, i32 }
%struct.solo_p2m_dev = type { i32, i32, i32, i64, i32, %struct.solo_p2m_desc* }
%struct.solo_p2m_desc = type { i32, i32, i32, i32 }

@SOLO_DEV_6110 = common dso_local global i64 0, align 8
@multi_p2m = common dso_local global i64 0, align 8
@SOLO_NR_P2M = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@desc_mode = common dso_local global i64 0, align 8
@SOLO_P2M_DESC_MODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_p2m_dma_desc(%struct.solo_dev* %0, %struct.solo_p2m_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.solo_dev*, align 8
  %7 = alloca %struct.solo_p2m_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.solo_p2m_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %6, align 8
  store %struct.solo_p2m_desc* %1, %struct.solo_p2m_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %16 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SOLO_DEV_6110, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i64, i64* @multi_p2m, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %25 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %24, i32 0, i32 4
  %26 = call i32 @atomic_inc_return(i32* %25)
  %27 = load i32, i32* @SOLO_NR_P2M, align 4
  %28 = urem i32 %26, %27
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %23, %20, %4
  %30 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 3
  %32 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %32, i64 %34
  store %struct.solo_p2m_dev* %35, %struct.solo_p2m_dev** %10, align 8
  %36 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %37 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %36, i32 0, i32 2
  %38 = call i64 @mutex_lock_interruptible(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EINTR, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %180

43:                                               ; preds = %29
  %44 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %45 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %44, i32 0, i32 4
  %46 = call i32 @reinit_completion(i32* %45)
  %47 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %48 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %86

51:                                               ; preds = %43
  %52 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %53 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOLO_DEV_6110, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  %58 = load i64, i64* @desc_mode, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %62 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %64 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @SOLO_P2M_CONFIG(i32 %66)
  %68 = call i32 @solo_reg_read(%struct.solo_dev* %65, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @SOLO_P2M_DES_ADR(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @solo_reg_write(%struct.solo_dev* %69, i32 %71, i32 %72)
  %74 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @SOLO_P2M_DESC_ID(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @solo_reg_write(%struct.solo_dev* %74, i32 %76, i32 %77)
  %79 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @SOLO_P2M_CONFIG(i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @SOLO_P2M_DESC_MODE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @solo_reg_write(%struct.solo_dev* %79, i32 %81, i32 %84)
  br label %127

86:                                               ; preds = %57, %51, %43
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %89 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %91 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %7, align 8
  %93 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %94 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %93, i32 0, i32 5
  store %struct.solo_p2m_desc* %92, %struct.solo_p2m_desc** %94, align 8
  %95 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @SOLO_P2M_TAR_ADR(i32 %96)
  %98 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %7, align 8
  %99 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %98, i64 1
  %100 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @solo_reg_write(%struct.solo_dev* %95, i32 %97, i32 %101)
  %103 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @SOLO_P2M_EXT_ADR(i32 %104)
  %106 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %7, align 8
  %107 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %106, i64 1
  %108 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @solo_reg_write(%struct.solo_dev* %103, i32 %105, i32 %109)
  %111 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @SOLO_P2M_EXT_CFG(i32 %112)
  %114 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %7, align 8
  %115 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %114, i64 1
  %116 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @solo_reg_write(%struct.solo_dev* %111, i32 %113, i32 %117)
  %119 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @SOLO_P2M_CONTROL(i32 %120)
  %122 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %7, align 8
  %123 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %122, i64 1
  %124 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @solo_reg_write(%struct.solo_dev* %119, i32 %121, i32 %125)
  br label %127

127:                                              ; preds = %86, %60
  %128 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %129 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %128, i32 0, i32 4
  %130 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %131 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @wait_for_completion_timeout(i32* %129, i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %135 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @WARN_ON_ONCE(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %13, align 4
  br label %153

142:                                              ; preds = %127
  %143 = load i32, i32* %11, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %147 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %145, %142
  br label %153

153:                                              ; preds = %152, %139
  %154 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @SOLO_P2M_CONTROL(i32 %155)
  %157 = call i32 @solo_reg_write(%struct.solo_dev* %154, i32 %156, i32 0)
  %158 = load i32, i32* %9, align 4
  %159 = icmp sgt i32 %158, 1
  br i1 %159, label %160, label %175

160:                                              ; preds = %153
  %161 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %162 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SOLO_DEV_6110, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @SOLO_P2M_CONFIG(i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @solo_reg_write(%struct.solo_dev* %170, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %169, %166, %160, %153
  %176 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %10, align 8
  %177 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %176, i32 0, i32 2
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load i32, i32* %13, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %175, %40
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i32 @SOLO_P2M_CONFIG(i32) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_P2M_DES_ADR(i32) #1

declare dso_local i32 @SOLO_P2M_DESC_ID(i32) #1

declare dso_local i32 @SOLO_P2M_TAR_ADR(i32) #1

declare dso_local i32 @SOLO_P2M_EXT_ADR(i32) #1

declare dso_local i32 @SOLO_P2M_EXT_CFG(i32) #1

declare dso_local i32 @SOLO_P2M_CONTROL(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
